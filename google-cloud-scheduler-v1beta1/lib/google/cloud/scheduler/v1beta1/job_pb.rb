# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/scheduler/v1beta1/job.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/scheduler/v1beta1/target_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/scheduler/v1beta1/job.proto", :syntax => :proto3) do
    add_message "google.cloud.scheduler.v1beta1.Job" do
      optional :name, :string, 1
      optional :description, :string, 2
      optional :schedule, :string, 20
      optional :time_zone, :string, 21
      optional :user_update_time, :message, 9, "google.protobuf.Timestamp"
      optional :state, :enum, 10, "google.cloud.scheduler.v1beta1.Job.State"
      optional :status, :message, 11, "google.rpc.Status"
      optional :schedule_time, :message, 17, "google.protobuf.Timestamp"
      optional :last_attempt_time, :message, 18, "google.protobuf.Timestamp"
      optional :retry_config, :message, 19, "google.cloud.scheduler.v1beta1.RetryConfig"
      optional :attempt_deadline, :message, 22, "google.protobuf.Duration"
      optional :legacy_app_engine_cron, :bool, 23
      oneof :target do
        optional :pubsub_target, :message, 4, "google.cloud.scheduler.v1beta1.PubsubTarget"
        optional :app_engine_http_target, :message, 5, "google.cloud.scheduler.v1beta1.AppEngineHttpTarget"
        optional :http_target, :message, 6, "google.cloud.scheduler.v1beta1.HttpTarget"
      end
    end
    add_enum "google.cloud.scheduler.v1beta1.Job.State" do
      value :STATE_UNSPECIFIED, 0
      value :ENABLED, 1
      value :PAUSED, 2
      value :DISABLED, 3
      value :UPDATE_FAILED, 4
    end
    add_message "google.cloud.scheduler.v1beta1.RetryConfig" do
      optional :retry_count, :int32, 1
      optional :max_retry_duration, :message, 2, "google.protobuf.Duration"
      optional :min_backoff_duration, :message, 3, "google.protobuf.Duration"
      optional :max_backoff_duration, :message, 4, "google.protobuf.Duration"
      optional :max_doublings, :int32, 5
    end
  end
end

module Google
  module Cloud
    module Scheduler
      module V1beta1
        Job = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1beta1.Job").msgclass
        Job::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1beta1.Job.State").enummodule
        RetryConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1beta1.RetryConfig").msgclass
      end
    end
  end
end
