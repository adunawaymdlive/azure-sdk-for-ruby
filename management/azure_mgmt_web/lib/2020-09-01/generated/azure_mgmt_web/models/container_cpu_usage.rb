# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Model object.
    #
    #
    class ContainerCpuUsage

      include MsRestAzure

      # @return [Integer]
      attr_accessor :total_usage

      # @return [Array<Integer>]
      attr_accessor :per_cpu_usage

      # @return [Integer]
      attr_accessor :kernel_mode_usage

      # @return [Integer]
      attr_accessor :user_mode_usage


      #
      # Mapper for ContainerCpuUsage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerCpuUsage',
          type: {
            name: 'Composite',
            class_name: 'ContainerCpuUsage',
            model_properties: {
              total_usage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'totalUsage',
                type: {
                  name: 'Number'
                }
              },
              per_cpu_usage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'perCpuUsage',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BignumElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              },
              kernel_mode_usage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kernelModeUsage',
                type: {
                  name: 'Number'
                }
              },
              user_mode_usage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userModeUsage',
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
