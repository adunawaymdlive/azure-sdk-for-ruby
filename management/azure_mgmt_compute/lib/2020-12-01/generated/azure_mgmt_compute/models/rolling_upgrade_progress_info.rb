# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_12_01
  module Models
    #
    # Information about the number of virtual machine instances in each upgrade
    # state.
    #
    class RollingUpgradeProgressInfo

      include MsRestAzure

      # @return [Integer] The number of instances that have been successfully
      # upgraded.
      attr_accessor :successful_instance_count

      # @return [Integer] The number of instances that have failed to be
      # upgraded successfully.
      attr_accessor :failed_instance_count

      # @return [Integer] The number of instances that are currently being
      # upgraded.
      attr_accessor :in_progress_instance_count

      # @return [Integer] The number of instances that have not yet begun to be
      # upgraded.
      attr_accessor :pending_instance_count


      #
      # Mapper for RollingUpgradeProgressInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RollingUpgradeProgressInfo',
          type: {
            name: 'Composite',
            class_name: 'RollingUpgradeProgressInfo',
            model_properties: {
              successful_instance_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'successfulInstanceCount',
                type: {
                  name: 'Number'
                }
              },
              failed_instance_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'failedInstanceCount',
                type: {
                  name: 'Number'
                }
              },
              in_progress_instance_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'inProgressInstanceCount',
                type: {
                  name: 'Number'
                }
              },
              pending_instance_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'pendingInstanceCount',
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
