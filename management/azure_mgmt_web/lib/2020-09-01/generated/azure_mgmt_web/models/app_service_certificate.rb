# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Key Vault container for a certificate that is purchased through Azure.
    #
    class AppServiceCertificate

      include MsRestAzure

      # @return [String] Key Vault resource Id.
      attr_accessor :key_vault_id

      # @return [String] Key Vault secret name.
      attr_accessor :key_vault_secret_name

      # @return [KeyVaultSecretStatus] Status of the Key Vault secret. Possible
      # values include: 'Initialized', 'WaitingOnCertificateOrder',
      # 'Succeeded', 'CertificateOrderFailed',
      # 'OperationNotPermittedOnKeyVault',
      # 'AzureServiceUnauthorizedToAccessKeyVault', 'KeyVaultDoesNotExist',
      # 'KeyVaultSecretDoesNotExist', 'UnknownError', 'ExternalPrivateKey',
      # 'Unknown'
      attr_accessor :provisioning_state


      #
      # Mapper for AppServiceCertificate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AppServiceCertificate',
          type: {
            name: 'Composite',
            class_name: 'AppServiceCertificate',
            model_properties: {
              key_vault_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyVaultId',
                type: {
                  name: 'String'
                }
              },
              key_vault_secret_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyVaultSecretName',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
                type: {
                  name: 'Enum',
                  module: 'KeyVaultSecretStatus'
                }
              }
            }
          }
        }
      end
    end
  end
end
