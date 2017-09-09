# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::KeyVault
  module Models
    #
    # Properties of the vault
    #
    class VaultProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return The Azure Active Directory tenant ID that should be used for
      # authenticating requests to the key vault.
      attr_accessor :tenant_id

      # @return [Sku] SKU details
      attr_accessor :sku

      # @return [Array<AccessPolicyEntry>] An array of 0 to 16 identities that
      # have access to the key vault. All identities in the array must use the
      # same tenant ID as the key vault's tenant ID.
      attr_accessor :access_policies

      # @return [String] The URI of the vault for performing operations on keys
      # and secrets.
      attr_accessor :vault_uri

      # @return [Boolean] Property to specify whether Azure Virtual Machines
      # are permitted to retrieve certificates stored as secrets from the key
      # vault.
      attr_accessor :enabled_for_deployment

      # @return [Boolean] Property to specify whether Azure Disk Encryption is
      # permitted to retrieve secrets from the vault and unwrap keys.
      attr_accessor :enabled_for_disk_encryption

      # @return [Boolean] Property to specify whether Azure Resource Manager is
      # permitted to retrieve secrets from the key vault.
      attr_accessor :enabled_for_template_deployment

      # @return [Boolean] Property to specify whether the 'soft delete'
      # functionality is enabled for this key vault. It does not accept false
      # value.
      attr_accessor :enable_soft_delete

      # @return [CreateMode] The vault's create mode to indicate whether the
      # vault need to be recovered or not. Possible values include: 'recover',
      # 'default'
      attr_accessor :create_mode


      #
      # Mapper for VaultProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VaultProperties',
          type: {
            name: 'Composite',
            class_name: 'VaultProperties',
            model_properties: {
              tenant_id: {
                required: true,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              sku: {
                required: true,
                serialized_name: 'sku',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              access_policies: {
                required: false,
                serialized_name: 'accessPolicies',
                constraints: {
                  MaxItems: 16
                },
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AccessPolicyEntryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AccessPolicyEntry'
                      }
                  }
                }
              },
              vault_uri: {
                required: false,
                serialized_name: 'vaultUri',
                type: {
                  name: 'String'
                }
              },
              enabled_for_deployment: {
                required: false,
                serialized_name: 'enabledForDeployment',
                type: {
                  name: 'Boolean'
                }
              },
              enabled_for_disk_encryption: {
                required: false,
                serialized_name: 'enabledForDiskEncryption',
                type: {
                  name: 'Boolean'
                }
              },
              enabled_for_template_deployment: {
                required: false,
                serialized_name: 'enabledForTemplateDeployment',
                type: {
                  name: 'Boolean'
                }
              },
              enable_soft_delete: {
                required: false,
                serialized_name: 'enableSoftDelete',
                type: {
                  name: 'Boolean'
                }
              },
              create_mode: {
                required: false,
                serialized_name: 'createMode',
                type: {
                  name: 'Enum',
                  module: 'CreateMode'
                }
              }
            }
          }
        }
      end
    end
  end
end
