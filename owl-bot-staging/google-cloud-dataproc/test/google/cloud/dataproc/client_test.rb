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

require "helper"
require "google/cloud/dataproc"
require "gapic/common"
require "gapic/grpc"

class Google::Cloud::Dataproc::ClientConstructionMinitest < Minitest::Test
  def test_autoscaling_policy_service
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dataproc.autoscaling_policy_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dataproc::V1::AutoscalingPolicyService::Client, client
    end
  end

  def test_batch_controller
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dataproc.batch_controller do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dataproc::V1::BatchController::Client, client
    end
  end

  def test_cluster_controller
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dataproc.cluster_controller do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dataproc::V1::ClusterController::Client, client
    end
  end

  def test_job_controller
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dataproc.job_controller do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dataproc::V1::JobController::Client, client
    end
  end

  def test_workflow_template_service
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dataproc.workflow_template_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dataproc::V1::WorkflowTemplateService::Client, client
    end
  end
end
