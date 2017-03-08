# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Stamp capacity information.
    #
    class StampCapacity

      include MsRestAzure

      # @return [String] Name of the stamp.
      attr_accessor :name

      # @return [Integer] Available capacity (# of machines, bytes of storage
      # etc...).
      attr_accessor :available_capacity

      # @return [Integer] Total capacity (# of machines, bytes of storage
      # etc...).
      attr_accessor :total_capacity

      # @return [String] Name of the unit.
      attr_accessor :unit

      # @return [ComputeModeOptions] Shared/dedicated workers. Possible values
      # include: 'Shared', 'Dedicated', 'Dynamic'
      attr_accessor :compute_mode

      # @return [WorkerSizeOptions] Size of the machines. Possible values
      # include: 'Default', 'Small', 'Medium', 'Large'
      attr_accessor :worker_size

      # @return [Integer] Size ID of machines:
      # 0 - Small
      # 1 - Medium
      # 2 - Large
      attr_accessor :worker_size_id

      # @return [Boolean] If <code>true</code>, it includes basic apps.
      # Basic apps are not used for capacity allocation.
      attr_accessor :exclude_from_capacity_allocation

      # @return [Boolean] <code>true</code> if capacity is applicable for all
      # apps; otherwise, <code>false</code>.
      attr_accessor :is_applicable_for_all_compute_modes

      # @return [String] Shared or Dedicated.
      attr_accessor :site_mode


      #
      # Mapper for StampCapacity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StampCapacity',
          type: {
            name: 'Composite',
            class_name: 'StampCapacity',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              available_capacity: {
                required: false,
                serialized_name: 'availableCapacity',
                type: {
                  name: 'Number'
                }
              },
              total_capacity: {
                required: false,
                serialized_name: 'totalCapacity',
                type: {
                  name: 'Number'
                }
              },
              unit: {
                required: false,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              compute_mode: {
                required: false,
                serialized_name: 'computeMode',
                type: {
                  name: 'Enum',
                  module: 'ComputeModeOptions'
                }
              },
              worker_size: {
                required: false,
                serialized_name: 'workerSize',
                type: {
                  name: 'Enum',
                  module: 'WorkerSizeOptions'
                }
              },
              worker_size_id: {
                required: false,
                serialized_name: 'workerSizeId',
                type: {
                  name: 'Number'
                }
              },
              exclude_from_capacity_allocation: {
                required: false,
                serialized_name: 'excludeFromCapacityAllocation',
                type: {
                  name: 'Boolean'
                }
              },
              is_applicable_for_all_compute_modes: {
                required: false,
                serialized_name: 'isApplicableForAllComputeModes',
                type: {
                  name: 'Boolean'
                }
              },
              site_mode: {
                required: false,
                serialized_name: 'siteMode',
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
