# frozen_string_literal: true

# Copyright 2021 Google LLC
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

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          module TestCases
            # Path helper methods for the TestCases API.
            module Paths
              ##
              # Create a fully-qualified Agent resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              #
              # @return [::String]
              def agent_path project:, location:, agent:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}"
              end

              ##
              # Create a fully-qualified EntityType resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/entityTypes/{entity_type}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              # @param entity_type [String]
              #
              # @return [::String]
              def entity_type_path project:, location:, agent:, entity_type:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/entityTypes/#{entity_type}"
              end

              ##
              # Create a fully-qualified Environment resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/environments/{environment}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              # @param environment [String]
              #
              # @return [::String]
              def environment_path project:, location:, agent:, environment:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/environments/#{environment}"
              end

              ##
              # Create a fully-qualified Flow resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/flows/{flow}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              # @param flow [String]
              #
              # @return [::String]
              def flow_path project:, location:, agent:, flow:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/flows/#{flow}"
              end

              ##
              # Create a fully-qualified Intent resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/intents/{intent}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              # @param intent [String]
              #
              # @return [::String]
              def intent_path project:, location:, agent:, intent:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/intents/#{intent}"
              end

              ##
              # Create a fully-qualified Page resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/flows/{flow}/pages/{page}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              # @param flow [String]
              # @param page [String]
              #
              # @return [::String]
              def page_path project:, location:, agent:, flow:, page:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"
                raise ::ArgumentError, "flow cannot contain /" if flow.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/flows/#{flow}/pages/#{page}"
              end

              ##
              # Create a fully-qualified TestCase resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/testCases/{test_case}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              # @param test_case [String]
              #
              # @return [::String]
              def test_case_path project:, location:, agent:, test_case:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/testCases/#{test_case}"
              end

              ##
              # Create a fully-qualified TestCaseResult resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/testCases/{test_case}/results/{result}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              # @param test_case [String]
              # @param result [String]
              #
              # @return [::String]
              def test_case_result_path project:, location:, agent:, test_case:, result:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"
                raise ::ArgumentError, "test_case cannot contain /" if test_case.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/testCases/#{test_case}/results/#{result}"
              end

              ##
              # Create a fully-qualified TransitionRouteGroup resource string.
              #
              # @overload transition_route_group_path(project:, location:, agent:, flow:, transition_route_group:)
              #   The resource will be in the following format:
              #
              #   `projects/{project}/locations/{location}/agents/{agent}/flows/{flow}/transitionRouteGroups/{transition_route_group}`
              #
              #   @param project [String]
              #   @param location [String]
              #   @param agent [String]
              #   @param flow [String]
              #   @param transition_route_group [String]
              #
              # @overload transition_route_group_path(project:, location:, agent:, transition_route_group:)
              #   The resource will be in the following format:
              #
              #   `projects/{project}/locations/{location}/agents/{agent}/transitionRouteGroups/{transition_route_group}`
              #
              #   @param project [String]
              #   @param location [String]
              #   @param agent [String]
              #   @param transition_route_group [String]
              #
              # @return [::String]
              def transition_route_group_path **args
                resources = {
                  "agent:flow:location:project:transition_route_group" => (proc do |project:, location:, agent:, flow:, transition_route_group:|
                    raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                    raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                    raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"
                    raise ::ArgumentError, "flow cannot contain /" if flow.to_s.include? "/"

                    "projects/#{project}/locations/#{location}/agents/#{agent}/flows/#{flow}/transitionRouteGroups/#{transition_route_group}"
                  end),
                  "agent:location:project:transition_route_group" => (proc do |project:, location:, agent:, transition_route_group:|
                    raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                    raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                    raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"

                    "projects/#{project}/locations/#{location}/agents/#{agent}/transitionRouteGroups/#{transition_route_group}"
                  end)
                }

                resource = resources[args.keys.sort.join(":")]
                raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
                resource.call(**args)
              end

              ##
              # Create a fully-qualified Webhook resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/webhooks/{webhook}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              # @param webhook [String]
              #
              # @return [::String]
              def webhook_path project:, location:, agent:, webhook:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/webhooks/#{webhook}"
              end

              extend self
            end
          end
        end
      end
    end
  end
end
