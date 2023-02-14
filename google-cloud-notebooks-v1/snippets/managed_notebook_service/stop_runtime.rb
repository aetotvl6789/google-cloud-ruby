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

# [START notebooks_v1_generated_ManagedNotebookService_StopRuntime_sync]
require "google/cloud/notebooks/v1"

##
# Snippet for the stop_runtime call in the ManagedNotebookService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Notebooks::V1::ManagedNotebookService::Client#stop_runtime. It
# may require modification in order to execute successfully.
#
def stop_runtime
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Notebooks::V1::ManagedNotebookService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Notebooks::V1::StopRuntimeRequest.new

  # Call the stop_runtime method.
  result = client.stop_runtime request

  # The returned object is of type Gapic::Operation. You can use it to
  # check the status of an operation, cancel it, or wait for results.
  # Here is how to wait for a response.
  result.wait_until_done! timeout: 60
  if result.response?
    p result.response
  else
    puts "No response received."
  end
end
# [END notebooks_v1_generated_ManagedNotebookService_StopRuntime_sync]
