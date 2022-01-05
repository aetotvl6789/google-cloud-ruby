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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/recommender/v1/version"

require "google/cloud/recommender/v1/recommender/credentials"
require "google/cloud/recommender/v1/recommender/paths"
require "google/cloud/recommender/v1/recommender/client"

module Google
  module Cloud
    module Recommender
      module V1
        ##
        # Provides insights and recommendations for cloud customers for various
        # categories like performance optimization, cost savings, reliability, feature
        # discovery, etc. Insights and recommendations are generated automatically
        # based on analysis of user resources, configuration and monitoring metrics.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/recommender/v1/recommender"
        #     client = ::Google::Cloud::Recommender::V1::Recommender::Client.new
        #
        module Recommender
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "recommender", "helpers.rb"
require "google/cloud/recommender/v1/recommender/helpers" if ::File.file? helper_path
