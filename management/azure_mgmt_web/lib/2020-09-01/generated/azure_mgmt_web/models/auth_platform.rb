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
    class AuthPlatform < ProxyOnlyResource

      include MsRestAzure

      # @return [Boolean]
      attr_accessor :enabled

      # @return [String]
      attr_accessor :runtime_version

      # @return [String]
      attr_accessor :config_file_path


      #
      # Mapper for AuthPlatform class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AuthPlatform',
          type: {
            name: 'Composite',
            class_name: 'AuthPlatform',
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
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enabled',
                type: {
                  name: 'Boolean'
                }
              },
              runtime_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.runtimeVersion',
                type: {
                  name: 'String'
                }
              },
              config_file_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.configFilePath',
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