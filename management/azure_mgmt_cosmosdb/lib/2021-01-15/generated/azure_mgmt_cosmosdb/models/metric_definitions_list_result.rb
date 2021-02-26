# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2021_01_15
  module Models
    #
    # The response to a list metric definitions request.
    #
    class MetricDefinitionsListResult

      include MsRestAzure

      # @return [Array<MetricDefinition>] The list of metric definitions for
      # the account.
      attr_accessor :value


      #
      # Mapper for MetricDefinitionsListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetricDefinitionsListResult',
          type: {
            name: 'Composite',
            class_name: 'MetricDefinitionsListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetricDefinitionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricDefinition'
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
