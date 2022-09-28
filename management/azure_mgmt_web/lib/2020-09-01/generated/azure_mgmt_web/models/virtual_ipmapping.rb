# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Virtual IP mapping.
    #
    class VirtualIPMapping

      include MsRestAzure

      # @return [String] Virtual IP address.
      attr_accessor :virtual_ip

      # @return [Integer] Internal HTTP port.
      attr_accessor :internal_http_port

      # @return [Integer] Internal HTTPS port.
      attr_accessor :internal_https_port

      # @return [Boolean] Is virtual IP mapping in use.
      attr_accessor :in_use

      # @return [String] name of the service that virtual IP is assigned to
      attr_accessor :service_name


      #
      # Mapper for VirtualIPMapping class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualIPMapping',
          type: {
            name: 'Composite',
            class_name: 'VirtualIPMapping',
            model_properties: {
              virtual_ip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'virtualIP',
                type: {
                  name: 'String'
                }
              },
              internal_http_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'internalHttpPort',
                type: {
                  name: 'Number'
                }
              },
              internal_https_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'internalHttpsPort',
                type: {
                  name: 'Number'
                }
              },
              in_use: {
                client_side_validation: true,
                required: false,
                serialized_name: 'inUse',
                type: {
                  name: 'Boolean'
                }
              },
              service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceName',
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