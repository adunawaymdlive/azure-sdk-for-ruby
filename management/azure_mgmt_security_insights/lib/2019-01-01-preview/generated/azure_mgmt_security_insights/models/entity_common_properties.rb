# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # Entity common property bag.
    #
    class EntityCommonProperties

      include MsRestAzure

      # @return A bag of custom fields that should be part of the entity and
      # will be presented to the user.
      attr_accessor :additional_data

      # @return [String] The graph item display name which is a short humanly
      # readable description of the graph item instance. This property is
      # optional and might be system generated.
      attr_accessor :friendly_name


      #
      # Mapper for EntityCommonProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EntityCommonProperties',
          type: {
            name: 'Composite',
            class_name: 'EntityCommonProperties',
            model_properties: {
              additional_data: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'additionalData',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'friendlyName',
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