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

require "googleauth"

module Google
  module Cloud
    module DataQnA
      module V1alpha
        module AutoSuggestionService
          # Credentials for the AutoSuggestionService API.
          class Credentials < ::Google::Auth::Credentials
            self.scope = [
              "https://www.googleapis.com/auth/cloud-platform"
            ]
            self.env_vars = [
              "BIGQUERY_DATAQNA_CREDENTIALS",
              "BIGQUERY_DATAQNA_KEYFILE",
              "GOOGLE_CLOUD_CREDENTIALS",
              "GOOGLE_CLOUD_KEYFILE",
              "GCLOUD_KEYFILE",
              "BIGQUERY_DATAQNA_CREDENTIALS_JSON",
              "BIGQUERY_DATAQNA_KEYFILE_JSON",
              "GOOGLE_CLOUD_CREDENTIALS_JSON",
              "GOOGLE_CLOUD_KEYFILE_JSON",
              "GCLOUD_KEYFILE_JSON"
            ]
            self.paths = [
              "~/.config/google_cloud/application_default_credentials.json"
            ]
          end
        end
      end
    end
  end
end
