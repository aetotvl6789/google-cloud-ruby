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

# [START osconfig_v1_generated_OsConfigService_PausePatchDeployment_sync]
require "google/cloud/os_config/v1"

##
# Snippet for the pause_patch_deployment call in the OsConfigService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::OsConfig::V1::OsConfigService::Client#pause_patch_deployment.
# It may require modification in order to execute successfully.
#
def pause_patch_deployment
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::OsConfig::V1::OsConfigService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::OsConfig::V1::PausePatchDeploymentRequest.new

  # Call the pause_patch_deployment method.
  result = client.pause_patch_deployment request

  # The returned object is of type Google::Cloud::OsConfig::V1::PatchDeployment.
  p result
end
# [END osconfig_v1_generated_OsConfigService_PausePatchDeployment_sync]
