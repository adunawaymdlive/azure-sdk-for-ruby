# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2017_02_28_preview
  module Models
    #
    # An environment is a set of time-series data available for query, and is
    # the top level Azure Time Series Insights resource.
    #
    class EnvironmentResource < TrackedResource

      include MsRestAzure

      # @return [Sku]
      attr_accessor :sku

      # @return [Duration] ISO8601 timespan specifying the minimum number of
      # days the environment's events will be available for query.
      attr_accessor :data_retention_time

      # @return [StorageLimitExceededBehavior] The behavior the Time Series
      # Insights service should take when the environment's capacity has been
      # exceeded. If "PauseIngress" is specified, new events will not be read
      # from the event source. If "PurgeOldData" is specified, new events will
      # continue to be read and old events will be deleted from the
      # environment. The default behavior is PurgeOldData. Possible values
      # include: 'PurgeOldData', 'PauseIngress'
      attr_accessor :storage_limit_exceeded_behavior

      # @return [ProvisioningState] Provisioning state of the resource.
      # Possible values include: 'Accepted', 'Creating', 'Updating',
      # 'Succeeded', 'Failed', 'Deleting'
      attr_accessor :provisioning_state

      # @return [DateTime] The time the resource was created.
      attr_accessor :creation_time

      # @return An id used to access the environment data, e.g. to query the
      # environment's events or upload reference data for the environment.
      attr_accessor :data_access_id

      # @return [String] The fully qualified domain name used to access the
      # environment data, e.g. to query the environment's events or upload
      # reference data for the environment.
      attr_accessor :data_access_fqdn


      #
      # Mapper for EnvironmentResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EnvironmentResource',
          type: {
            name: 'Composite',
            class_name: 'EnvironmentResource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              data_retention_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.dataRetentionTime',
                type: {
                  name: 'TimeSpan'
                }
              },
              storage_limit_exceeded_behavior: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageLimitExceededBehavior',
                type: {
                  name: 'Enum',
                  module: 'StorageLimitExceededBehavior'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'ProvisioningState'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              data_access_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.dataAccessId',
                type: {
                  name: 'String'
                }
              },
              data_access_fqdn: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.dataAccessFqdn',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
