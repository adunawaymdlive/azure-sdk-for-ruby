# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_10_01_preview
  module Models
    #
    # The location capability.
    #
    class LocationCapabilities

      include MsRestAzure

      # @return [String] The location name.
      attr_accessor :name

      # @return [Array<ServerVersionCapability>] The list of supported server
      # versions.
      attr_accessor :supported_server_versions

      # @return [Array<ManagedInstanceVersionCapability>] The list of supported
      # managed instance versions.
      attr_accessor :supported_managed_instance_versions

      # @return [CapabilityStatus] The status of the capability. Possible
      # values include: 'Visible', 'Available', 'Default', 'Disabled'
      attr_accessor :status

      # @return [String] The reason for the capability not being available.
      attr_accessor :reason


      #
      # Mapper for LocationCapabilities class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LocationCapabilities',
          type: {
            name: 'Composite',
            class_name: 'LocationCapabilities',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              supported_server_versions: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'supportedServerVersions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServerVersionCapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServerVersionCapability'
                      }
                  }
                }
              },
              supported_managed_instance_versions: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'supportedManagedInstanceVersions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ManagedInstanceVersionCapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ManagedInstanceVersionCapability'
                      }
                  }
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'CapabilityStatus'
                }
              },
              reason: {
                client_side_validation: true,
                required: false,
                serialized_name: 'reason',
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