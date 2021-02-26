# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Options for app content migration.
    #
    class StorageMigrationOptions < ProxyOnlyResource

      include MsRestAzure

      # @return [String] AzureFiles connection string.
      attr_accessor :azurefiles_connection_string

      # @return [String] AzureFiles share.
      attr_accessor :azurefiles_share

      # @return [Boolean] <code>true</code>if the app should be switched over;
      # otherwise, <code>false</code>. Default value: false .
      attr_accessor :switch_site_after_migration

      # @return [Boolean] <code>true</code> if the app should be read only
      # during copy operation; otherwise, <code>false</code>. Default value:
      # false .
      attr_accessor :block_write_access_to_site


      #
      # Mapper for StorageMigrationOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageMigrationOptions',
          type: {
            name: 'Composite',
            class_name: 'StorageMigrationOptions',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              system_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'systemData',
                type: {
                  name: 'Composite',
                  class_name: 'SystemData'
                }
              },
              azurefiles_connection_string: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.azurefilesConnectionString',
                type: {
                  name: 'String'
                }
              },
              azurefiles_share: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.azurefilesShare',
                type: {
                  name: 'String'
                }
              },
              switch_site_after_migration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.switchSiteAfterMigration',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              block_write_access_to_site: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.blockWriteAccessToSite',
                default_value: false,
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
