# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2020_10_01
  module Models
    #
    # An Activity Log Alert rule resource.
    #
    class ActivityLogAlertResource < AzureResource

      include MsRestAzure

      # @return [Array<String>] A list of resource IDs that will be used as
      # prefixes. The alert will only apply to Activity Log events with
      # resource IDs that fall under one of these prefixes. This list must
      # include at least one item.
      attr_accessor :scopes

      # @return [AlertRuleAllOfCondition] The condition that will cause this
      # alert to activate.
      attr_accessor :condition

      # @return [ActionList] The actions that will activate when the condition
      # is met.
      attr_accessor :actions

      # @return [Boolean] Indicates whether this Activity Log Alert rule is
      # enabled. If an Activity Log Alert rule is not enabled, then none of its
      # actions will be activated. Default value: true .
      attr_accessor :enabled

      # @return [String] A description of this Activity Log Alert rule.
      attr_accessor :description


      #
      # Mapper for ActivityLogAlertResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ActivityLogAlertResource',
          type: {
            name: 'Composite',
            class_name: 'ActivityLogAlertResource',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                default_value: 'global',
                type: {
                  name: 'String'
                }
              },
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
              scopes: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.scopes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              condition: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.condition',
                type: {
                  name: 'Composite',
                  class_name: 'AlertRuleAllOfCondition'
                }
              },
              actions: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.actions',
                type: {
                  name: 'Composite',
                  class_name: 'ActionList'
                }
              },
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enabled',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
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
