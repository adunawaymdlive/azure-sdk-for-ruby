# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2021_01_15
  module Models
    #
    # The response to a list metrics request.
    #
    class MetricListResult

      include MsRestAzure

      # @return [Array<Metric>] The list of metrics for the account.
      attr_accessor :value


      #
      # Mapper for MetricListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetricListResult',
          type: {
            name: 'Composite',
            class_name: 'MetricListResult',
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
                      serialized_name: 'MetricElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Metric'
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
