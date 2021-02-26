# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2021_01_01
  module Models
    #
    # List of blob inventory policies returned.
    #
    class ListBlobInventoryPolicy

      include MsRestAzure

      # @return [Array<BlobInventoryPolicy>] List of blob inventory policies.
      attr_accessor :value


      #
      # Mapper for ListBlobInventoryPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ListBlobInventoryPolicy',
          type: {
            name: 'Composite',
            class_name: 'ListBlobInventoryPolicy',
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
                      serialized_name: 'BlobInventoryPolicyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BlobInventoryPolicy'
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
