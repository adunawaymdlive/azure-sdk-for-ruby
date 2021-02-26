# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_12_01
  module Models
    #
    # Virtual Machine Scale Set OS Upgrade History operation response.
    #
    class UpgradeOperationHistoricalStatusInfo

      include MsRestAzure

      # @return [UpgradeOperationHistoricalStatusInfoProperties] Information
      # about the properties of the upgrade operation.
      attr_accessor :properties

      # @return [String] Resource type
      attr_accessor :type

      # @return [String] Resource location
      attr_accessor :location


      #
      # Mapper for UpgradeOperationHistoricalStatusInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UpgradeOperationHistoricalStatusInfo',
          type: {
            name: 'Composite',
            class_name: 'UpgradeOperationHistoricalStatusInfo',
            model_properties: {
              properties: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'UpgradeOperationHistoricalStatusInfoProperties'
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
                required: false,
                read_only: true,
                serialized_name: 'location',
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
