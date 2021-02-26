# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2020_11_01
  module Models
    #
    # Resource name availability request content.
    #
    class ResourceNameAvailabilityRequest

      include MsRestAzure

      # @return [String] Resource name to verify.
      attr_accessor :name

      # @return [CheckNameResourceTypes] Resource type used for verification.
      # Possible values include: 'Microsoft.NetApp/netAppAccounts',
      # 'Microsoft.NetApp/netAppAccounts/capacityPools',
      # 'Microsoft.NetApp/netAppAccounts/capacityPools/volumes',
      # 'Microsoft.NetApp/netAppAccounts/capacityPools/volumes/snapshots'
      attr_accessor :type

      # @return [String] Resource group name.
      attr_accessor :resource_group


      #
      # Mapper for ResourceNameAvailabilityRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceNameAvailabilityRequest',
          type: {
            name: 'Composite',
            class_name: 'ResourceNameAvailabilityRequest',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              resource_group: {
                client_side_validation: true,
                required: true,
                serialized_name: 'resourceGroup',
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
