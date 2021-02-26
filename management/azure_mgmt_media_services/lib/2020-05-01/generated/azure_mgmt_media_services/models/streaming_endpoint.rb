# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # The streaming endpoint.
    #
    class StreamingEndpoint < TrackedResource

      include MsRestAzure

      # @return [String] The streaming endpoint description.
      attr_accessor :description

      # @return [Integer] The number of scale units. Use the Scale operation to
      # adjust this value.
      attr_accessor :scale_units

      # @return [String] This feature is deprecated, do not set a value for
      # this property.
      attr_accessor :availability_set_name

      # @return [StreamingEndpointAccessControl] The access control definition
      # of the streaming endpoint.
      attr_accessor :access_control

      # @return [Integer] Max cache age
      attr_accessor :max_cache_age

      # @return [Array<String>] The custom host names of the streaming endpoint
      attr_accessor :custom_host_names

      # @return [String] The streaming endpoint host name.
      attr_accessor :host_name

      # @return [Boolean] The CDN enabled flag.
      attr_accessor :cdn_enabled

      # @return [String] The CDN provider name.
      attr_accessor :cdn_provider

      # @return [String] The CDN profile name.
      attr_accessor :cdn_profile

      # @return [String] The provisioning state of the streaming endpoint.
      attr_accessor :provisioning_state

      # @return [StreamingEndpointResourceState] The resource state of the
      # streaming endpoint. Possible values include: 'Stopped', 'Starting',
      # 'Running', 'Stopping', 'Deleting', 'Scaling'
      attr_accessor :resource_state

      # @return [CrossSiteAccessPolicies] The streaming endpoint access
      # policies.
      attr_accessor :cross_site_access_policies

      # @return [DateTime] The free trial expiration time.
      attr_accessor :free_trial_end_time

      # @return [DateTime] The exact time the streaming endpoint was created.
      attr_accessor :created

      # @return [DateTime] The exact time the streaming endpoint was last
      # modified.
      attr_accessor :last_modified

      # @return [SystemData] The system metadata relating to this resource.
      attr_accessor :system_data


      #
      # Mapper for StreamingEndpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StreamingEndpoint',
          type: {
            name: 'Composite',
            class_name: 'StreamingEndpoint',
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
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              scale_units: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.scaleUnits',
                type: {
                  name: 'Number'
                }
              },
              availability_set_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.availabilitySetName',
                type: {
                  name: 'String'
                }
              },
              access_control: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.accessControl',
                type: {
                  name: 'Composite',
                  class_name: 'StreamingEndpointAccessControl'
                }
              },
              max_cache_age: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.maxCacheAge',
                type: {
                  name: 'Number'
                }
              },
              custom_host_names: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.customHostNames',
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
              host_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.hostName',
                type: {
                  name: 'String'
                }
              },
              cdn_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.cdnEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              cdn_provider: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.cdnProvider',
                type: {
                  name: 'String'
                }
              },
              cdn_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.cdnProfile',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              resource_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceState',
                type: {
                  name: 'String'
                }
              },
              cross_site_access_policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.crossSiteAccessPolicies',
                type: {
                  name: 'Composite',
                  class_name: 'CrossSiteAccessPolicies'
                }
              },
              free_trial_end_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.freeTrialEndTime',
                type: {
                  name: 'DateTime'
                }
              },
              created: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.created',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModified',
                type: {
                  name: 'DateTime'
                }
              },
              system_data: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'systemData',
                type: {
                  name: 'Composite',
                  class_name: 'SystemData'
                }
              }
            }
          }
        }
      end
    end
  end
end
