# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Description of an operation available for Microsoft.Web resource
    # provider.
    #
    class CsmOperationDescription

      include MsRestAzure

      # @return [String]
      attr_accessor :name

      # @return [CsmOperationDisplay]
      attr_accessor :display

      # @return [String]
      attr_accessor :origin

      # @return [CsmOperationDescriptionProperties]
      attr_accessor :properties


      #
      # Mapper for CsmOperationDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CsmOperationDescription',
          type: {
            name: 'Composite',
            class_name: 'CsmOperationDescription',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display: {
                client_side_validation: true,
                required: false,
                serialized_name: 'display',
                type: {
                  name: 'Composite',
                  class_name: 'CsmOperationDisplay'
                }
              },
              origin: {
                client_side_validation: true,
                required: false,
                serialized_name: 'origin',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'CsmOperationDescriptionProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
