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
    module Datastore
      module Admin
        module V1
          # Datastore composite index definition.
          # @!attribute [r] project_id
          #   @return [::String]
          #     Output only. Project ID.
          # @!attribute [r] index_id
          #   @return [::String]
          #     Output only. The resource ID of the index.
          # @!attribute [rw] kind
          #   @return [::String]
          #     Required. The entity kind to which this index applies.
          # @!attribute [rw] ancestor
          #   @return [::Google::Cloud::Datastore::Admin::V1::Index::AncestorMode]
          #     Required. The index's ancestor mode.  Must not be ANCESTOR_MODE_UNSPECIFIED.
          # @!attribute [rw] properties
          #   @return [::Array<::Google::Cloud::Datastore::Admin::V1::Index::IndexedProperty>]
          #     Required. An ordered sequence of property names and their index attributes.
          # @!attribute [r] state
          #   @return [::Google::Cloud::Datastore::Admin::V1::Index::State]
          #     Output only. The state of the index.
          class Index
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # A property of an index.
            # @!attribute [rw] name
            #   @return [::String]
            #     Required. The property name to index.
            # @!attribute [rw] direction
            #   @return [::Google::Cloud::Datastore::Admin::V1::Index::Direction]
            #     Required. The indexed property's direction.  Must not be DIRECTION_UNSPECIFIED.
            class IndexedProperty
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # For an ordered index, specifies whether each of the entity's ancestors
            # will be included.
            module AncestorMode
              # The ancestor mode is unspecified.
              ANCESTOR_MODE_UNSPECIFIED = 0

              # Do not include the entity's ancestors in the index.
              NONE = 1

              # Include all the entity's ancestors in the index.
              ALL_ANCESTORS = 2
            end

            # The direction determines how a property is indexed.
            module Direction
              # The direction is unspecified.
              DIRECTION_UNSPECIFIED = 0

              # The property's values are indexed so as to support sequencing in
              # ascending order and also query by <, >, <=, >=, and =.
              ASCENDING = 1

              # The property's values are indexed so as to support sequencing in
              # descending order and also query by <, >, <=, >=, and =.
              DESCENDING = 2
            end

            # The possible set of states of an index.
            module State
              # The state is unspecified.
              STATE_UNSPECIFIED = 0

              # The index is being created, and cannot be used by queries.
              # There is an active long-running operation for the index.
              # The index is updated when writing an entity.
              # Some index data may exist.
              CREATING = 1

              # The index is ready to be used.
              # The index is updated when writing an entity.
              # The index is fully populated from all stored entities it applies to.
              READY = 2

              # The index is being deleted, and cannot be used by queries.
              # There is an active long-running operation for the index.
              # The index is not updated when writing an entity.
              # Some index data may exist.
              DELETING = 3

              # The index was being created or deleted, but something went wrong.
              # The index cannot by used by queries.
              # There is no active long-running operation for the index,
              # and the most recently finished long-running operation failed.
              # The index is not updated when writing an entity.
              # Some index data may exist.
              ERROR = 4
            end
          end
        end
      end
    end
  end
end
