# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_12_01
  module Models
    #
    # Describes a Virtual Machine Scale Set.
    #
    class VirtualMachineScaleSetUpdate < UpdateResource

      include MsRestAzure

      # @return [Sku] The virtual machine scale set sku.
      attr_accessor :sku

      # @return [Plan] The purchase plan when deploying a virtual machine scale
      # set from VM Marketplace images.
      attr_accessor :plan

      # @return [UpgradePolicy] The upgrade policy.
      attr_accessor :upgrade_policy

      # @return [AutomaticRepairsPolicy] Policy for automatic repairs.
      attr_accessor :automatic_repairs_policy

      # @return [VirtualMachineScaleSetUpdateVMProfile] The virtual machine
      # profile.
      attr_accessor :virtual_machine_profile

      # @return [Boolean] Specifies whether the Virtual Machine Scale Set
      # should be overprovisioned.
      attr_accessor :overprovision

      # @return [Boolean] When Overprovision is enabled, extensions are
      # launched only on the requested number of VMs which are finally kept.
      # This property will hence ensure that the extensions do not run on the
      # extra overprovisioned VMs.
      attr_accessor :do_not_run_extensions_on_overprovisioned_vms

      # @return [Boolean] When true this limits the scale set to a single
      # placement group, of max size 100 virtual machines. NOTE: If
      # singlePlacementGroup is true, it may be modified to false. However, if
      # singlePlacementGroup is false, it may not be modified to true.
      attr_accessor :single_placement_group

      # @return [AdditionalCapabilities] Specifies additional capabilities
      # enabled or disabled on the Virtual Machines in the Virtual Machine
      # Scale Set. For instance: whether the Virtual Machines have the
      # capability to support attaching managed data disks with UltraSSD_LRS
      # storage account type.
      attr_accessor :additional_capabilities

      # @return [ScaleInPolicy] Specifies the scale-in policy that decides
      # which virtual machines are chosen for removal when a Virtual Machine
      # Scale Set is scaled-in.
      attr_accessor :scale_in_policy

      # @return [SubResource] Specifies information about the proximity
      # placement group that the virtual machine scale set should be assigned
      # to. <br><br>Minimum api-version: 2018-04-01.
      attr_accessor :proximity_placement_group

      # @return [VirtualMachineScaleSetIdentity] The identity of the virtual
      # machine scale set, if configured.
      attr_accessor :identity


      #
      # Mapper for VirtualMachineScaleSetUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineScaleSetUpdate',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetUpdate',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              plan: {
                client_side_validation: true,
                required: false,
                serialized_name: 'plan',
                type: {
                  name: 'Composite',
                  class_name: 'Plan'
                }
              },
              upgrade_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.upgradePolicy',
                type: {
                  name: 'Composite',
                  class_name: 'UpgradePolicy'
                }
              },
              automatic_repairs_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.automaticRepairsPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'AutomaticRepairsPolicy'
                }
              },
              virtual_machine_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualMachineProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetUpdateVMProfile'
                }
              },
              overprovision: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.overprovision',
                type: {
                  name: 'Boolean'
                }
              },
              do_not_run_extensions_on_overprovisioned_vms: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.doNotRunExtensionsOnOverprovisionedVMs',
                type: {
                  name: 'Boolean'
                }
              },
              single_placement_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.singlePlacementGroup',
                type: {
                  name: 'Boolean'
                }
              },
              additional_capabilities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.additionalCapabilities',
                type: {
                  name: 'Composite',
                  class_name: 'AdditionalCapabilities'
                }
              },
              scale_in_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.scaleInPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'ScaleInPolicy'
                }
              },
              proximity_placement_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.proximityPlacementGroup',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetIdentity'
                }
              }
            }
          }
        }
      end
    end
  end
end