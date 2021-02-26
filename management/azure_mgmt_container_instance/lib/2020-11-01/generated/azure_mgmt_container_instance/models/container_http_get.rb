# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2020_11_01
  module Models
    #
    # The container Http Get settings, for liveness or readiness probe
    #
    class ContainerHttpGet

      include MsRestAzure

      # @return [String] The path to probe.
      attr_accessor :path

      # @return [Integer] The port number to probe.
      attr_accessor :port

      # @return [Scheme] The scheme. Possible values include: 'http', 'https'
      attr_accessor :scheme

      # @return [HttpHeaders] The HTTP headers.
      attr_accessor :http_headers


      #
      # Mapper for ContainerHttpGet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerHttpGet',
          type: {
            name: 'Composite',
            class_name: 'ContainerHttpGet',
            model_properties: {
              path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'path',
                type: {
                  name: 'String'
                }
              },
              port: {
                client_side_validation: true,
                required: true,
                serialized_name: 'port',
                type: {
                  name: 'Number'
                }
              },
              scheme: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scheme',
                type: {
                  name: 'String'
                }
              },
              http_headers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'httpHeaders',
                type: {
                  name: 'Composite',
                  class_name: 'HttpHeaders'
                }
              }
            }
          }
        }
      end
    end
  end
end
