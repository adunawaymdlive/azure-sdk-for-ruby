# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview
  module Models
    #
    # An environment is a set of time-series data available for query, and is
    # the top level Azure Time Series Insights resource. LongTerm environments
    # do not have set data retention limits.
    #
    class LongTermEnvironmentResource < EnvironmentResource

      include MsRestAzure


      def initialize
        @kind = "LongTerm"
      end

      attr_accessor :kind

      # @return An id used to access the environment data, e.g. to query the
      # environment's events or upload reference data for the environment.
      attr_accessor :data_access_id

      # @return [String] The fully qualified domain name used to access the
      # environment data, e.g. to query the environment's events or upload
      # reference data for the environment.
      attr_accessor :data_access_fqdn

      # @return [EnvironmentStatus] An object that represents the status of the
      # environment, and its internal state in the Time Series Insights
      # service.
      attr_accessor :status

      # @return [ProvisioningState] Provisioning state of the resource.
      # Possible values include: 'Accepted', 'Creating', 'Updating',
      # 'Succeeded', 'Failed', 'Deleting'
      attr_accessor :provisioning_state

      # @return [DateTime] The time the resource was created.
      attr_accessor :creation_time

      # @return [Array<TimeSeriesIdProperty>] The list of event properties
      # which will be used to define the environment's time series id.
      attr_accessor :time_series_id_properties

      # @return [LongTermStorageConfigurationOutput] The storage configuration
      # provides the connection details that allows the Time Series Insights
      # service to connect to the customer storage account that is used to
      # store the environment's data.
      attr_accessor :storage_configuration

      # @return [Duration] ISO8601 timespan specifying the number of days the
      # environment's events will be available for query from the warm store.
      attr_accessor :data_retention


      #
      # Mapper for LongTermEnvironmentResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LongTerm',
          type: {
            name: 'Composite',
            class_name: 'LongTermEnvironmentResource',
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
                required: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
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
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'Composite',
                  class_name: 'EnvironmentStatus'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
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
              time_series_id_properties: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.timeSeriesIdProperties',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TimeSeriesIdPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TimeSeriesIdProperty'
                      }
                  }
                }
              },
              storage_configuration: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.storageConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'LongTermStorageConfigurationOutput'
                }
              },
              data_retention: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.warmStoreConfiguration.dataRetention',
                type: {
                  name: 'TimeSpan'
                }
              }
            }
          }
        }
      end
    end
  end
end
