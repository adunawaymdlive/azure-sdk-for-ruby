# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2017_09_01
  module Models
    #
    # Parameters for a check name availability request.
    #
    class CheckNameAvailabilityParameters

      include MsRestAzure

      # @return [String] The name to check for availability
      attr_accessor :name

      # @return [String] The resource type. Must be set to
      # Microsoft.Batch/batchAccounts. Default value:
      # 'Microsoft.Batch/batchAccounts' .
      attr_accessor :type


      #
      # Mapper for CheckNameAvailabilityParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CheckNameAvailabilityParameters',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityParameters',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'Microsoft.Batch/batchAccounts',
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
