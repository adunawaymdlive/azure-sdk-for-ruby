# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview
  module Models
    #
    # Properties of the event source.
    #
    class EventSourceCommonProperties < ResourceProperties

      include MsRestAzure

      # @return [String] The event property that will be used as the event
      # source's timestamp. If a value isn't specified for
      # timestampPropertyName, or if null or empty-string is specified, the
      # event creation time will be used.
      attr_accessor :timestamp_property_name


      #
      # Mapper for EventSourceCommonProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventSourceCommonProperties',
          type: {
            name: 'Composite',
            class_name: 'EventSourceCommonProperties',
            model_properties: {
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provisioningState',
                type: {
                  name: 'String'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              timestamp_property_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timestampPropertyName',
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
