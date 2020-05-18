# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_04_01
  module Models
    #
    # HubVirtualNetworkConnection Resource.
    #
    class HubVirtualNetworkConnection < SubResource

      include MsRestAzure

      # @return [SubResource] Reference to the remote virtual network.
      attr_accessor :remote_virtual_network

      # @return [Boolean] VirtualHub to RemoteVnet transit to enabled or not.
      attr_accessor :allow_hub_to_remote_vnet_transit

      # @return [Boolean] Allow RemoteVnet to use Virtual Hub's gateways.
      attr_accessor :allow_remote_vnet_to_use_hub_vnet_gateways

      # @return [Boolean] Enable internet security.
      attr_accessor :enable_internet_security

      # @return [RoutingConfiguration] The Routing Configuration indicating the
      # associated and propagated route tables on this connection.
      attr_accessor :routing_configuration

      # @return [ProvisioningState] The provisioning state of the hub virtual
      # network connection resource. Possible values include: 'Succeeded',
      # 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for HubVirtualNetworkConnection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HubVirtualNetworkConnection',
          type: {
            name: 'Composite',
            class_name: 'HubVirtualNetworkConnection',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              remote_virtual_network: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.remoteVirtualNetwork',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              allow_hub_to_remote_vnet_transit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowHubToRemoteVnetTransit',
                type: {
                  name: 'Boolean'
                }
              },
              allow_remote_vnet_to_use_hub_vnet_gateways: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowRemoteVnetToUseHubVnetGateways',
                type: {
                  name: 'Boolean'
                }
              },
              enable_internet_security: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableInternetSecurity',
                type: {
                  name: 'Boolean'
                }
              },
              routing_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.routingConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'RoutingConfiguration'
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
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
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
