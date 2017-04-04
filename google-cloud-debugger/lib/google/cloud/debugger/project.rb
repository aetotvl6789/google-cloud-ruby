# Copyright 2017 Google Inc. All rights reserved.
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


require "google/cloud/errors"
require "google/cloud/env"
require "google/cloud/debugger/agent"
require "google/cloud/debugger/credentials"
require "google/cloud/debugger/middleware"
require "google/cloud/debugger/service"

module Google
  module Cloud
    module Debugger
      ##
      # # Project
      #
      # Projects are top-level containers in Google Cloud Platform. They store
      # information about billing and authorized users, and they control access
      # to Stackdriver Debugger resources. Each project has a friendly name and
      # a unique ID. Projects can be created only in the [Google Developers
      # Console](https://console.developers.google.com).
      #
      # @example
      #   require "google/cloud/debugger"
      #
      #   debugger = Google::Cloud::Debugger.new
      #   debugger.start
      #
      # See Google::Cloud#debugger
      class Project
        ##
        # @private The gRPC Service object.
        attr_accessor :service

        ##
        # The Stackdriver Debugger Agent object.
        attr_reader :agent

        ##
        # @private Creates a new Project instance.
        def initialize service, module_name:, module_version:
          @service = service
          @agent = Agent.new service, module_name: module_name,
                                      module_version: module_version
        end

        ##
        # The ID of the current project.
        #
        # @return [String] the Google Cloud project ID
        #
        # @example
        #   require "google/cloud/debugger"
        #
        #   debugger = Google::Cloud::Debugger.new(
        #     project: "my-project",
        #     keyfile: "/path/to/keyfile.json"
        #   )
        #
        #   debugger.project #=> "my-project"
        #
        def project
          service.project
        end

        ##
        # @private Default project.
        def self.default_project
          ENV["DEBUGGER_PROJECT"] ||
            ENV["GOOGLE_CLOUD_PROJECT"] ||
            ENV["GCLOUD_PROJECT"] ||
            Google::Cloud.env.project_id
        end

        ##
        # @private Default module name identifier.
        def self.default_module_name
          ENV["DEBUGGER_MODULE_NAME"] ||
            Google::Cloud.env.app_engine_service_id ||
            "ruby-app"
        end

        ##
        # @private Default module version identifier.
        def self.default_module_version
          ENV["DEBUGGER_MODULE_VERSION"] ||
            Google::Cloud.env.app_engine_service_version ||
            ""
        end

        ##
        # Start the Stackdriver Debugger Agent.
        #
        # @example
        #   require "google/cloud/debugger"
        #
        #   debugger = Google::Cloud::Debugger.new
        #   debugger.start
        #
        # See {Agent#start} for more details.
        def start
          agent.start
        end
        alias_method :attach, :start

        ##
        # Stop the Stackdriver Debugger Agent.
        #
        # @example
        #   require "google/cloud/debugger"
        #
        #   debugger = Google::Cloud::Debugger.new
        #   debugger.start
        #   debugger.stop
        #
        # See {Agent#stop} for more details.
        def stop
          agent.stop
        end
      end
    end
  end
end
