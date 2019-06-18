# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  module Models
    #
    # Parameters supplied to the Update OpenID Connect Provider operation.
    #
    class OpenidConnectProviderUpdateContract

      include MsRestAzure

      # @return [String] User-friendly OpenID Connect Provider name.
      attr_accessor :name

      # @return [String] User-friendly description of OpenID Connect Provider.
      attr_accessor :description

      # @return [String] Metadata endpoint URI.
      attr_accessor :metadata_endpoint

      # @return [String] Client ID of developer console which is the client
      # application.
      attr_accessor :client_id

      # @return [String] Client Secret of developer console which is the client
      # application.
      attr_accessor :client_secret


      #
      # Mapper for OpenidConnectProviderUpdateContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OpenidConnectProviderUpdateContract',
          type: {
            name: 'Composite',
            class_name: 'OpenidConnectProviderUpdateContract',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 50
                },
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              metadata_endpoint: {
                required: false,
                serialized_name: 'metadataEndpoint',
                type: {
                  name: 'String'
                }
              },
              client_id: {
                required: false,
                serialized_name: 'clientId',
                type: {
                  name: 'String'
                }
              },
              client_secret: {
                required: false,
                serialized_name: 'clientSecret',
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
