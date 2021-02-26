# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2020_11_01
  module Models
    #
    # The container probe, for liveness or readiness
    #
    class ContainerProbe

      include MsRestAzure

      # @return [ContainerExec] The execution command to probe
      attr_accessor :exec

      # @return [ContainerHttpGet] The Http Get settings to probe
      attr_accessor :http_get

      # @return [Integer] The initial delay seconds.
      attr_accessor :initial_delay_seconds

      # @return [Integer] The period seconds.
      attr_accessor :period_seconds

      # @return [Integer] The failure threshold.
      attr_accessor :failure_threshold

      # @return [Integer] The success threshold.
      attr_accessor :success_threshold

      # @return [Integer] The timeout seconds.
      attr_accessor :timeout_seconds


      #
      # Mapper for ContainerProbe class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerProbe',
          type: {
            name: 'Composite',
            class_name: 'ContainerProbe',
            model_properties: {
              exec: {
                client_side_validation: true,
                required: false,
                serialized_name: 'exec',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerExec'
                }
              },
              http_get: {
                client_side_validation: true,
                required: false,
                serialized_name: 'httpGet',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerHttpGet'
                }
              },
              initial_delay_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'initialDelaySeconds',
                type: {
                  name: 'Number'
                }
              },
              period_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'periodSeconds',
                type: {
                  name: 'Number'
                }
              },
              failure_threshold: {
                client_side_validation: true,
                required: false,
                serialized_name: 'failureThreshold',
                type: {
                  name: 'Number'
                }
              },
              success_threshold: {
                client_side_validation: true,
                required: false,
                serialized_name: 'successThreshold',
                type: {
                  name: 'Number'
                }
              },
              timeout_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeoutSeconds',
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
