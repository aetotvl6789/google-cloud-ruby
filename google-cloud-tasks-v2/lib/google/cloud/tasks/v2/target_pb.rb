# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/tasks/v2/target.proto

require 'google/api/field_behavior_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/tasks/v2/target.proto", :syntax => :proto3) do
    add_message "google.cloud.tasks.v2.HttpRequest" do
      optional :url, :string, 1
      optional :http_method, :enum, 2, "google.cloud.tasks.v2.HttpMethod"
      map :headers, :string, :string, 3
      optional :body, :bytes, 4
      oneof :authorization_header do
        optional :oauth_token, :message, 5, "google.cloud.tasks.v2.OAuthToken"
        optional :oidc_token, :message, 6, "google.cloud.tasks.v2.OidcToken"
      end
    end
    add_message "google.cloud.tasks.v2.AppEngineHttpRequest" do
      optional :http_method, :enum, 1, "google.cloud.tasks.v2.HttpMethod"
      optional :app_engine_routing, :message, 2, "google.cloud.tasks.v2.AppEngineRouting"
      optional :relative_uri, :string, 3
      map :headers, :string, :string, 4
      optional :body, :bytes, 5
    end
    add_message "google.cloud.tasks.v2.AppEngineRouting" do
      optional :service, :string, 1
      optional :version, :string, 2
      optional :instance, :string, 3
      optional :host, :string, 4
    end
    add_message "google.cloud.tasks.v2.OAuthToken" do
      optional :service_account_email, :string, 1
      optional :scope, :string, 2
    end
    add_message "google.cloud.tasks.v2.OidcToken" do
      optional :service_account_email, :string, 1
      optional :audience, :string, 2
    end
    add_enum "google.cloud.tasks.v2.HttpMethod" do
      value :HTTP_METHOD_UNSPECIFIED, 0
      value :POST, 1
      value :GET, 2
      value :HEAD, 3
      value :PUT, 4
      value :DELETE, 5
      value :PATCH, 6
      value :OPTIONS, 7
    end
  end
end

module Google
  module Cloud
    module Tasks
      module V2
        HttpRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.HttpRequest").msgclass
        AppEngineHttpRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.AppEngineHttpRequest").msgclass
        AppEngineRouting = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.AppEngineRouting").msgclass
        OAuthToken = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.OAuthToken").msgclass
        OidcToken = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.OidcToken").msgclass
        HttpMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2.HttpMethod").enummodule
      end
    end
  end
end
