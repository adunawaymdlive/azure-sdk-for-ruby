# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview
  module Models
    #
    # The sku determines the type of environment, either standard (S1 or S2) or
    # long-term (L1). For standard environments the sku determines the capacity
    # of the environment, the ingress rate, and the billing rate.
    #
    class Sku

      include MsRestAzure

      # @return [SkuName] The name of this SKU. Possible values include: 'S1',
      # 'S2', 'P1', 'L1'
      attr_accessor :name

      # @return [Integer] The capacity of the sku. For standard environments,
      # this value can be changed to support scale out of environments after
      # they have been created.
      attr_accessor :capacity


      #
      # Mapper for Sku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Sku',
          type: {
            name: 'Composite',
            class_name: 'Sku',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              capacity: {
                client_side_validation: true,
                required: true,
                serialized_name: 'capacity',
                constraints: {
                  InclusiveMaximum: 10,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
