# Copyright 2016 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "simplecov"

gem "minitest"
require "minitest/autorun"
require "minitest/focus"
require "minitest/rg"
require "ostruct"
require "json"
require "base64"
require "uri"
require "google/cloud/storage"

##
# Monkey-Patch Google API Client to support Mocks
module Google::Apis::Core::Hashable
  ##
  # Minitest Mock depends on === to match same-value objects.
  # By default, the Google API Client objects do not match with ===.
  # Therefore, we must add this capability.
  # This module seems like as good a place as any...
  def === other
    return(to_h === other.to_h) if other.respond_to? :to_h
    super
  end
end

class MockStorage < Minitest::Spec
  let(:project) { "test" }
  let(:credentials) { OpenStruct.new(client: OpenStruct.new(updater_proc: Proc.new {})) }
  let(:storage) { Google::Cloud::Storage::Project.new(Google::Cloud::Storage::Service.new(project, credentials, upload_chunk_size: 5 * 1024 * 1024 )) }
  let(:pubsub_topic_name) { "my-topic-name" }
  let(:file_obj) { StringIO.new("My test file") }
  let(:file_name) { "my_test_file.txt" }
  let(:acl) { "authenticated_read" }

  # Register this spec type for when :mock_storage is used.
  register_spec_type(self) do |desc, *addl|
    addl.include? :mock_storage
  end

  def random_bucket_hash name: random_bucket_name,
                         url_root: "https://www.googleapis.com/storage/v1",
                         location: "US",
                         storage_class: "STANDARD",
                         versioning: nil,
                         logging_bucket: nil,
                         logging_prefix: nil,
                         website_main: nil,
                         website_404: nil,
                         cors: [],
                         requester_pays: nil,
                         lifecycle: nil,
                         location_type: "multi-region",
                         rpo: "DEFAULT",
                         autoclass_enabled: nil,
                         autoclass_terminal_storage_class: nil,
                         enable_object_retention: nil,
                         effective_time: DateTime.now,
                         retention_duration_seconds: 604_800, # 7 days
                         soft_deleted: nil,
                         hierarchical_namespace: nil,
                         generation: "1733393981548601746"
    versioning_config = { "enabled" => versioning } if versioning

    data = {
      "kind" => "storage#bucket",
      "id" => name,
      "selfLink" => "#{url_root}/b/#{name}",
      "projectNumber" => "1234567890",
      "name" => name,
      "timeCreated" => Time.now,
      "generation" => generation,
      "metageneration" => "1",
      "owner" => { "entity" => "project-owners-1234567890" },
      "location" => location,
      "locationType" => location_type,
      "rpo" => rpo,
      "cors" => cors,
      "lifecycle" => lifecycle,
      "logging" => logging_hash(logging_bucket, logging_prefix),
      "storageClass" => storage_class,
      "versioning" => versioning_config,
      "website" => website_hash(website_main, website_404),
      "billing" => billing_hash(requester_pays),
      "etag" => "CAE=",
      "autoclass" => autoclass_config_hash(autoclass_enabled, autoclass_terminal_storage_class),
      "enableObjectRetention" => enable_object_retention,
      "softDeletePolicy" => soft_delete_policy_object(retention_duration_seconds: retention_duration_seconds),
      "hierarchicalNamespace" => hierarchical_namespace
    }
    if soft_deleted
      data.merge! soft_delete_bucket_hash
    end
    data.delete_if { |_, v| v.nil? }
  end

  def soft_delete_policy_object retention_duration_seconds: 604_800
    Google::Apis::StorageV1::Bucket::SoftDeletePolicy.new(
      effective_time: DateTime.now,
      retention_duration_seconds: retention_duration_seconds
    )
  end

  def soft_delete_policy_bucket retention_duration_seconds: 604_800
    Google::Apis::StorageV1::Bucket::SoftDeletePolicy.new(
      effective_time: DateTime.now,
      retention_duration_seconds: retention_duration_seconds
    )
  end

  def soft_delete_bucket_hash
    soft_delete_policy = soft_delete_policy_bucket
    {
      "softDeleteTime" => soft_delete_policy.effective_time,
      "hardDeleteTime" => soft_delete_policy.effective_time.to_time + soft_delete_policy.retention_duration_seconds
    }
  end

  def hierarchical_namespace_object enabled: true
    Google::Apis::StorageV1::Bucket::HierarchicalNamespace.new(
      enabled: enabled
    )
  end

  def autoclass_config_hash(enabled, terminal_storage_class)
    { "enabled"               => enabled,
      "terminalStorageClass"  => terminal_storage_class
    }.delete_if { |_, v| v.nil? } if !enabled.nil? || terminal_storage_class
  end

  def logging_hash(bucket, prefix)
    { "logBucket"       => bucket,
      "logObjectPrefix" => prefix,
    }.delete_if { |_, v| v.nil? } if bucket || prefix
  end

  def website_hash(website_main, website_404)
    { "mainPageSuffix" => website_main,
      "notFoundPage"   => website_404,
    }.delete_if { |_, v| v.nil? } if website_main || website_404
  end

  def billing_hash(requester_pays)
    { "requesterPays" => requester_pays} unless requester_pays.nil?
  end

  def file_retention_hash(retention_params)
    { "mode"               => retention_params[:mode],
      "retainUntilTime"  => retention_params[:retain_until_time]
    }.delete_if { |_, v| v.nil? } if !retention_params.nil? && !retention_params.empty?
  end

  def random_file_hash bucket=random_bucket_name,
                       name=random_file_path,
                       generation="1234567890",
                       kms_key_name="path/to/encryption_key_name",
                       custom_time: nil,
                       retention_params: nil,
                       override_unlocked_retention: nil,
                       soft_delete_time: nil,
                       hard_delete_time: nil
    { "kind" => "storage#object",
      "id" => "#{bucket}/#{name}/1234567890",
      "selfLink" => "https://www.googleapis.com/storage/v1/b/#{bucket}/o/#{name}",
      "name" => "#{name}",
      "timeCreated" => Time.now,
      "bucket" => "#{bucket}",
      "generation" => generation,
      "metageneration" => "1",
      "cacheControl" => "public, max-age=3600",
      "contentDisposition" => "attachment; filename=filename.ext",
      "contentEncoding" => "gzip",
      "contentLanguage" => "en",
      "contentType" => "text/plain",
      "customTime" => custom_time,
      "updated" => Time.now,
      "storageClass" => "STANDARD",
      "size" => rand(10_000),
      "md5Hash" => "HXB937GQDFxDFqUGi//weQ==",
      "mediaLink" => "https://www.googleapis.com/download/storage/v1/b/#{bucket}/o/#{name}?generation=1234567890&alt=media",
      "metadata" => { "player" => "Alice", "score" => "101" },
      "owner" => { "entity" => "user-1234567890", "entityId" => "abc123" },
      "crc32c" => "Lm1F3g==",
      "etag" => "CKih16GjycICEAE=",
      "kmsKeyName" => kms_key_name,
      "temporaryHold" => true,
      "eventBasedHold" => true,
      "retentionExpirationTime" => Time.now,
      "retention" => file_retention_hash(retention_params),
      "overrideUnlockedRetention" => override_unlocked_retention,
      "softDeleteTime" => soft_delete_time,
      "hardDeleteTime" => hard_delete_time }
  end

  def random_bucket_name
    (0...50).map { ("a".."z").to_a[rand(26)] }.join
  end

  def random_file_path
    [(0...10).map { ("a".."z").to_a[rand(26)] }.join,
     (0...10).map { ("a".."z").to_a[rand(26)] }.join,
     (0...10).map { ("a".."z").to_a[rand(26)] }.join + ".txt"].join "/"
  end

  def done_rewrite gapi
    Google::Apis::StorageV1::RewriteResponse.new done: true, resource: gapi
  end

  def undone_rewrite token
    Google::Apis::StorageV1::RewriteResponse.new done: false, rewrite_token: token
  end

  def random_notification_gapi id: "1", topic: "//pubsub.googleapis.com/projects/test/topics/my-topic", payload: "NONE"
    gapi = Google::Apis::StorageV1::Notification.new(
      custom_attributes: { "foo" => "bar" },
      event_types: ["OBJECT_FINALIZE"],
      object_name_prefix: "my-prefix",
      payload_format: payload,
      topic: topic
    )
    gapi.id = id if id
    gapi
  end

  # Stub for the `http_res` that is returned in the Apis::Core::DownloadCommand monkey-patch in Service.
  def download_http_resp gzip: nil
    headers = {}
    headers["Content-Encoding"] = ["gzip"] if gzip
    OpenStruct.new(header: headers)
  end

  def encryption_gapi key_name
    Google::Apis::StorageV1::Bucket::Encryption.new default_kms_key_name: key_name
  end

  def lifecycle_gapi *rules
    Google::Apis::StorageV1::Bucket::Lifecycle.new rule: Array(rules)
  end

  def lifecycle_rule_gapi action,
                          storage_class: nil,
                          age: nil,
                          created_before: nil,
                          custom_time_before: nil,
                          days_since_custom_time: nil,
                          days_since_noncurrent_time: nil,
                          is_live: nil,
                          matches_storage_class: nil,
                          noncurrent_time_before: nil,
                          num_newer_versions: nil,
                          matches_prefix: nil,
                          matches_suffix: nil
    Google::Apis::StorageV1::Bucket::Lifecycle::Rule.new(
      action: Google::Apis::StorageV1::Bucket::Lifecycle::Rule::Action.new(
        storage_class: storage_class,
        type: action
      ),
      condition: Google::Apis::StorageV1::Bucket::Lifecycle::Rule::Condition.new(
        age: age,
        created_before: created_before,
        custom_time_before: custom_time_before,
        days_since_custom_time: days_since_custom_time,
        days_since_noncurrent_time: days_since_noncurrent_time,
        is_live: is_live,
        matches_storage_class: Array(matches_storage_class),
        noncurrent_time_before: noncurrent_time_before,
        num_newer_versions: num_newer_versions,
        matches_prefix: Array(matches_prefix),
        matches_suffix: Array(matches_suffix)
      )
    )
  end

  def iam_configuration_gapi uniform_bucket_level_access: nil, locked_time: nil, public_access_prevention: nil
    raise "uniform_bucket_level_access must be provided with locked_time" if !locked_time.nil? && uniform_bucket_level_access.nil?
    gapi = Google::Apis::StorageV1::Bucket::IamConfiguration.new
    if uniform_bucket_level_access
      ubla = Google::Apis::StorageV1::Bucket::IamConfiguration::UniformBucketLevelAccess.new(
        enabled: uniform_bucket_level_access
      )
      ubla.locked_time = (Date.today + 1).to_datetime if locked_time
      gapi.uniform_bucket_level_access = ubla
    end
    gapi.public_access_prevention = public_access_prevention if public_access_prevention
    gapi
  end

  def policy_gapi etag: "CAE=", version: 1, bindings: []
    Google::Apis::StorageV1::Policy.new etag: etag, version: version, bindings: bindings
  end

  def get_bucket_args if_metageneration_match: nil,
                      if_metageneration_not_match: nil,
                      user_project: nil,
                      generation: nil,
                      soft_deleted: nil,
                      options: {}
    {
      if_metageneration_match: if_metageneration_match,
      if_metageneration_not_match: if_metageneration_not_match,
      user_project: user_project,
      generation: generation,
      soft_deleted: soft_deleted,
      options: options
    }
  end

  def update_bucket_args if_metageneration_match: nil,
                         if_metageneration_not_match: nil,
                         predefined_acl: nil,
                         predefined_default_object_acl: nil,
                         user_project: nil,
                         options: {}
    {
      if_metageneration_match: if_metageneration_match,
      if_metageneration_not_match: if_metageneration_not_match,
      predefined_acl: predefined_acl,
      predefined_default_object_acl: predefined_default_object_acl,
      user_project: user_project,
      options: options
    }
  end

  def patch_bucket_args if_metageneration_match: nil,
                        if_metageneration_not_match: nil,
                        predefined_acl: nil,
                        predefined_default_object_acl: nil,
                        user_project: nil,
                        options: {}
    {
      if_metageneration_match: if_metageneration_match,
      if_metageneration_not_match: if_metageneration_not_match,
      predefined_acl: predefined_acl,
      predefined_default_object_acl: predefined_default_object_acl,
      user_project: user_project,
      options: options
    }
  end

  def delete_bucket_args if_metageneration_match: nil,
                         if_metageneration_not_match: nil,
                         user_project: nil,
                         options: {}
    {
      if_metageneration_match: if_metageneration_match,
      if_metageneration_not_match: if_metageneration_not_match,
      user_project: user_project,
      options: options
    }
  end

  def insert_object_args name: nil,
                         predefined_acl: nil,
                         upload_source: nil,
                         content_encoding: nil,
                         content_type: "text/plain",
                         kms_key_name: nil,
                         if_generation_match: nil,
                         if_generation_not_match: nil,
                         if_metageneration_match: nil,
                         if_metageneration_not_match: nil,
                         user_project: nil,
                         options: {}
    {
      name: name,
      predefined_acl: predefined_acl,
      upload_source: upload_source,
      content_encoding: content_encoding,
      content_type: content_type,
      kms_key_name: kms_key_name,
      if_generation_match: if_generation_match,
      if_generation_not_match: if_generation_not_match,
      if_metageneration_match: if_metageneration_match,
      if_metageneration_not_match: if_metageneration_not_match,
      user_project: user_project,
      options: options
    }
  end

  def get_object_args generation: nil,
                      if_generation_match: nil,
                      if_generation_not_match: nil,
                      if_metageneration_match: nil,
                      if_metageneration_not_match: nil,
                      user_project: nil,
                      soft_deleted: nil,
                      options: {}
    {
      generation: generation,
      if_generation_match: if_generation_match,
      if_generation_not_match: if_generation_not_match,
      if_metageneration_match: if_metageneration_match,
      if_metageneration_not_match: if_metageneration_not_match,
      user_project: user_project,
      soft_deleted: soft_deleted,
      options: options
    }
  end

  def list_objects_args delimiter: nil,
                        max_results: nil,
                        page_token: nil,
                        prefix: nil,
                        versions: nil,
                        user_project: nil,
                        match_glob: nil,
                        include_folders_as_prefixes: nil,
                        soft_deleted: nil,
                        options: {}
    {
      delimiter: delimiter,
      max_results: max_results,
      page_token: page_token,
      prefix: prefix,
      versions: versions,
      user_project: user_project,
      match_glob: match_glob,
      include_folders_as_prefixes: include_folders_as_prefixes,
      soft_deleted: soft_deleted,
      options: options
    }
  end

  def patch_object_args generation: nil,
                        if_generation_match: nil,
                        if_generation_not_match: nil,
                        if_metageneration_match: nil,
                        if_metageneration_not_match: nil,
                        predefined_acl: nil,
                        user_project: nil,
                        override_unlocked_retention: nil,
                        options: {}
    opts = {
      generation: generation,
      if_generation_match: if_generation_match,
      if_generation_not_match: if_generation_not_match,
      if_metageneration_match: if_metageneration_match,
      if_metageneration_not_match: if_metageneration_not_match,
      predefined_acl: predefined_acl,
      user_project: user_project,
      override_unlocked_retention: override_unlocked_retention,
      options: options
    }
  end

  def move_object_args if_generation_match: nil,
                       if_generation_not_match: nil,
                       if_metageneration_match: nil,
                       if_metageneration_not_match: nil,
                       if_source_generation_match: nil,
                       if_source_generation_not_match: nil,
                       if_source_metageneration_match: nil,
                       if_source_metageneration_not_match: nil,
                       user_project: nil,
                       fields: nil,
                       quota_user: nil,
                       user_ip: nil,
                       options: {}
    {
      if_generation_match: if_generation_match,
      if_generation_not_match: if_generation_not_match,
      if_metageneration_match: if_metageneration_match,
      if_metageneration_not_match: if_metageneration_not_match,
      if_source_generation_match: if_source_generation_match,
      if_source_generation_not_match: if_source_generation_not_match,
      if_source_metageneration_match: if_source_metageneration_match,
      if_source_metageneration_not_match: if_source_metageneration_not_match,
      user_project: user_project,
      fields: fields,
      quota_user: quota_user,
      user_ip: user_ip,
      options: options
    }
  end

  def delete_object_args generation: nil,
                         if_generation_match: nil,
                         if_generation_not_match: nil,
                         if_metageneration_match: nil,
                         if_metageneration_not_match: nil,
                         user_project: nil,
                         options: {}
    {
      generation: generation,
      if_generation_match: if_generation_match,
      if_generation_not_match: if_generation_not_match,
      if_metageneration_match: if_metageneration_match,
      if_metageneration_not_match: if_metageneration_not_match,
      user_project: user_project,
      options: options
    }
  end

  def rewrite_object_args destination_kms_key_name: nil,
                          destination_predefined_acl: nil,
                          if_generation_match: nil,
                          if_generation_not_match: nil,
                          if_metageneration_match: nil,
                          if_metageneration_not_match: nil,
                          if_source_generation_match: nil,
                          if_source_generation_not_match: nil,
                          if_source_metageneration_match: nil,
                          if_source_metageneration_not_match: nil,
                          source_generation: nil,
                          rewrite_token: nil,
                          user_project: nil,
                          options: {}
    {
      destination_kms_key_name: destination_kms_key_name,
      destination_predefined_acl: destination_predefined_acl,
      if_generation_match: if_generation_match,
      if_generation_not_match: if_generation_not_match,
      if_metageneration_match: if_metageneration_match,
      if_metageneration_not_match: if_metageneration_not_match,
      if_source_generation_match: if_source_generation_match,
      if_source_generation_not_match: if_source_generation_not_match,
      if_source_metageneration_match: if_source_metageneration_match,
      if_source_metageneration_not_match: if_source_metageneration_not_match,
      source_generation: source_generation,
      rewrite_token: rewrite_token,
      user_project: user_project,
      options: options
    }
  end

  def compose_object_args destination_predefined_acl: nil,
                          if_generation_match: nil,
                          if_metageneration_match: nil,
                          user_project: nil,
                          options: {}
    {
      destination_predefined_acl: destination_predefined_acl,
      if_generation_match: if_generation_match,
      if_metageneration_match: if_metageneration_match,
      user_project: user_project,
      options: options
    }
  end

  def restore_object_args copy_source_acl: nil,
                          if_generation_match: nil,
                          if_generation_not_match: nil,
                          if_metageneration_match: nil,
                          if_metageneration_not_match: nil,
                          projection: nil,
                          user_project: nil,
                          fields: nil,
                          options: {}
    {
      copy_source_acl: copy_source_acl,
      if_generation_match: if_generation_match,
      if_generation_not_match: if_generation_not_match,
      if_metageneration_match: if_metageneration_match,
      if_metageneration_not_match: if_metageneration_not_match,
      projection: projection,
      user_project: user_project,
      fields: fields,
      options: options
    }
  end


  def compose_request source_files, destination_gapi = nil, if_source_generation_match: nil
    source_objects = source_files.map do |file|
      if file.is_a? String
        Google::Apis::StorageV1::ComposeRequest::SourceObject.new \
          name: file
      else
        Google::Apis::StorageV1::ComposeRequest::SourceObject.new \
          name: file.name,
          generation: file.generation
      end
    end
    if if_source_generation_match
      if source_files.count != if_source_generation_match.count
        raise ArgumentError, "if provided, if_source_generation_match length must match sources length"
      end
      if_source_generation_match.each_with_index do |generation, i|
        next unless generation
        object_preconditions = Google::Apis::StorageV1::ComposeRequest::SourceObject::ObjectPreconditions.new(
          if_generation_match: generation
        )
        source_objects[i].object_preconditions = object_preconditions
      end
    end
    Google::Apis::StorageV1::ComposeRequest.new(
      destination: destination_gapi,
      source_objects: source_objects
    )
  end

  def list_files_gapi count = 2, token = nil, prefixes = nil
    files = count.times.map { Google::Apis::StorageV1::Object.from_json random_file_hash.to_json }
    Google::Apis::StorageV1::Objects.new kind: "storage#objects", items: files, next_page_token: token, prefixes: prefixes
  end

  def restore_file_gapi bucket, file_name, generation=nil
    file_hash = random_file_hash(bucket, file_name, generation).to_json
    Google::Apis::StorageV1::Object.from_json file_hash
  end
end
