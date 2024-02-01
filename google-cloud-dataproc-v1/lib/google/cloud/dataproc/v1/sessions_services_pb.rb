# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dataproc/v1/sessions.proto for package 'google.cloud.dataproc.v1'
# Original file comments:
# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/dataproc/v1/sessions_pb'

module Google
  module Cloud
    module Dataproc
      module V1
        module SessionController
          # The `SessionController` provides methods to manage interactive sessions.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dataproc.v1.SessionController'

            # Create an interactive session asynchronously.
            rpc :CreateSession, ::Google::Cloud::Dataproc::V1::CreateSessionRequest, ::Google::Longrunning::Operation
            # Gets the resource representation for an interactive session.
            rpc :GetSession, ::Google::Cloud::Dataproc::V1::GetSessionRequest, ::Google::Cloud::Dataproc::V1::Session
            # Lists interactive sessions.
            rpc :ListSessions, ::Google::Cloud::Dataproc::V1::ListSessionsRequest, ::Google::Cloud::Dataproc::V1::ListSessionsResponse
            # Terminates the interactive session.
            rpc :TerminateSession, ::Google::Cloud::Dataproc::V1::TerminateSessionRequest, ::Google::Longrunning::Operation
            # Deletes the interactive session resource. If the session is not in terminal
            # state, it is terminated, and then deleted.
            rpc :DeleteSession, ::Google::Cloud::Dataproc::V1::DeleteSessionRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end