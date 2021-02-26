# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_12_01
  module Models
    #
    # Specifies settings related to VM Guest Patching on Windows.
    #
    class PatchSettings

      include MsRestAzure

      # @return [WindowsVMGuestPatchMode] Specifies the mode of VM Guest
      # Patching to IaaS virtual machine.<br /><br /> Possible values are:<br
      # /><br /> **Manual** - You  control the application of patches to a
      # virtual machine. You do this by applying patches manually inside the
      # VM. In this mode, automatic updates are disabled; the property
      # WindowsConfiguration.enableAutomaticUpdates must be false<br /><br />
      # **AutomaticByOS** - The virtual machine will automatically be updated
      # by the OS. The property WindowsConfiguration.enableAutomaticUpdates
      # must be true. <br /><br /> **AutomaticByPlatform** - the virtual
      # machine will automatically updated by the platform. The properties
      # provisionVMAgent and WindowsConfiguration.enableAutomaticUpdates must
      # be true. Possible values include: 'Manual', 'AutomaticByOS',
      # 'AutomaticByPlatform'
      attr_accessor :patch_mode

      # @return [Boolean] Enables customers to patch their Azure VMs without
      # requiring a reboot. For enableHotpatching, the 'provisionVMAgent' must
      # be set to true and 'patchMode' must be set to 'AutomaticByPlatform'.
      attr_accessor :enable_hotpatching


      #
      # Mapper for PatchSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PatchSettings',
          type: {
            name: 'Composite',
            class_name: 'PatchSettings',
            model_properties: {
              patch_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'patchMode',
                type: {
                  name: 'String'
                }
              },
              enable_hotpatching: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enableHotpatching',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
