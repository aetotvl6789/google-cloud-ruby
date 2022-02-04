# frozen_string_literal: true

# Copyright 2022 Google LLC
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
    module ContactCenterInsights
      module V1
        module ContactCenterInsights
          # Path helper methods for the ContactCenterInsights API.
          module Paths
            ##
            # Create a fully-qualified Analysis resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/conversations/{conversation}/analyses/{analysis}`
            #
            # @param project [String]
            # @param location [String]
            # @param conversation [String]
            # @param analysis [String]
            #
            # @return [::String]
            def analysis_path project:, location:, conversation:, analysis:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "conversation cannot contain /" if conversation.to_s.include? "/"

              "projects/#{project}/locations/#{location}/conversations/#{conversation}/analyses/#{analysis}"
            end

            ##
            # Create a fully-qualified Conversation resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/conversations/{conversation}`
            #
            # @param project [String]
            # @param location [String]
            # @param conversation [String]
            #
            # @return [::String]
            def conversation_path project:, location:, conversation:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/conversations/#{conversation}"
            end

            ##
            # Create a fully-qualified Issue resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/issueModels/{issue_model}/issues/{issue}`
            #
            # @param project [String]
            # @param location [String]
            # @param issue_model [String]
            # @param issue [String]
            #
            # @return [::String]
            def issue_path project:, location:, issue_model:, issue:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "issue_model cannot contain /" if issue_model.to_s.include? "/"

              "projects/#{project}/locations/#{location}/issueModels/#{issue_model}/issues/#{issue}"
            end

            ##
            # Create a fully-qualified IssueModel resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/issueModels/{issue_model}`
            #
            # @param project [String]
            # @param location [String]
            # @param issue_model [String]
            #
            # @return [::String]
            def issue_model_path project:, location:, issue_model:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/issueModels/#{issue_model}"
            end

            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            ##
            # Create a fully-qualified Participant resource string.
            #
            # @overload participant_path(project:, conversation:, participant:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/conversations/{conversation}/participants/{participant}`
            #
            #   @param project [String]
            #   @param conversation [String]
            #   @param participant [String]
            #
            # @overload participant_path(project:, location:, conversation:, participant:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/conversations/{conversation}/participants/{participant}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param conversation [String]
            #   @param participant [String]
            #
            # @return [::String]
            def participant_path **args
              resources = {
                "conversation:participant:project" => (proc do |project:, conversation:, participant:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "conversation cannot contain /" if conversation.to_s.include? "/"

                  "projects/#{project}/conversations/#{conversation}/participants/#{participant}"
                end),
                "conversation:location:participant:project" => (proc do |project:, location:, conversation:, participant:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "conversation cannot contain /" if conversation.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/conversations/#{conversation}/participants/#{participant}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified PhraseMatcher resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}`
            #
            # @param project [String]
            # @param location [String]
            # @param phrase_matcher [String]
            #
            # @return [::String]
            def phrase_matcher_path project:, location:, phrase_matcher:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/phraseMatchers/#{phrase_matcher}"
            end

            ##
            # Create a fully-qualified Settings resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/settings`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def settings_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}/settings"
            end

            ##
            # Create a fully-qualified View resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/views/{view}`
            #
            # @param project [String]
            # @param location [String]
            # @param view [String]
            #
            # @return [::String]
            def view_path project:, location:, view:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/views/#{view}"
            end

            extend self
          end
        end
      end
    end
  end
end
