# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Source control configuration for an app.
    #
    class SiteSourceControl < ProxyOnlyResource

      include MsRestAzure

      # @return [String] Repository or source control URL.
      attr_accessor :repo_url

      # @return [String] Name of branch to use for deployment.
      attr_accessor :branch

      # @return [Boolean] <code>true</code> to limit to manual integration;
      # <code>false</code> to enable continuous integration (which configures
      # webhooks into online repos like GitHub).
      attr_accessor :is_manual_integration

      # @return [Boolean] <code>true</code> if this is deployed via GitHub
      # action.
      attr_accessor :is_git_hub_action

      # @return [Boolean] <code>true</code> to enable deployment rollback;
      # otherwise, <code>false</code>.
      attr_accessor :deployment_rollback_enabled

      # @return [Boolean] <code>true</code> for a Mercurial repository;
      # <code>false</code> for a Git repository.
      attr_accessor :is_mercurial


      #
      # Mapper for SiteSourceControl class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SiteSourceControl',
          type: {
            name: 'Composite',
            class_name: 'SiteSourceControl',
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
              repo_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.repoUrl',
                type: {
                  name: 'String'
                }
              },
              branch: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.branch',
                type: {
                  name: 'String'
                }
              },
              is_manual_integration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isManualIntegration',
                type: {
                  name: 'Boolean'
                }
              },
              is_git_hub_action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isGitHubAction',
                type: {
                  name: 'Boolean'
                }
              },
              deployment_rollback_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.deploymentRollbackEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              is_mercurial: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isMercurial',
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