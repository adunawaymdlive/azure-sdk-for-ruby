# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2021_01_01
  module Models
    #
    # Properties of key vault.
    #
    class KeyVaultProperties

      include MsRestAzure

      # @return [String] The name of KeyVault key.
      attr_accessor :key_name

      # @return [String] The version of KeyVault key.
      attr_accessor :key_version

      # @return [String] The Uri of KeyVault.
      attr_accessor :key_vault_uri

      # @return [String] The object identifier of the current versioned Key
      # Vault Key in use.
      attr_accessor :current_versioned_key_identifier

      # @return [DateTime] Timestamp of last rotation of the Key Vault Key.
      attr_accessor :last_key_rotation_timestamp


      #
      # Mapper for KeyVaultProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyVaultProperties',
          type: {
            name: 'Composite',
            class_name: 'KeyVaultProperties',
            model_properties: {
              key_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyname',
                type: {
                  name: 'String'
                }
              },
              key_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyversion',
                type: {
                  name: 'String'
                }
              },
              key_vault_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyvaulturi',
                type: {
                  name: 'String'
                }
              },
              current_versioned_key_identifier: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'currentVersionedKeyIdentifier',
                type: {
                  name: 'String'
                }
              },
              last_key_rotation_timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lastKeyRotationTimestamp',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
