# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview
  module Models
    #
    # The response of the List Environments operation.
    #
    class EnvironmentListResponse

      include MsRestAzure

      # @return [Array<EnvironmentResource>] Result of the List Environments
      # operation.
      attr_accessor :value


      #
      # Mapper for EnvironmentListResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EnvironmentListResponse',
          type: {
            name: 'Composite',
            class_name: 'EnvironmentListResponse',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EnvironmentResourceElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'kind',
                        uber_parent: 'Resource',
                        class_name: 'EnvironmentResource'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
