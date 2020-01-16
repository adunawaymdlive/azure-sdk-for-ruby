# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2017_02_28_preview
  module Models
    #
    # Model object.
    #
    #
    class AccessPolicyUpdateParameters

      include MsRestAzure

      # @return [String] An description of the access policy.
      attr_accessor :description

      # @return [Array<AccessPolicyRole>] The list of roles the principal is
      # assigned on the environment.
      attr_accessor :roles


      #
      # Mapper for AccessPolicyUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AccessPolicyUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'AccessPolicyUpdateParameters',
            model_properties: {
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              roles: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.roles',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AccessPolicyRoleElementType',
                      type: {
                        name: 'Enum',
                        module: 'AccessPolicyRole'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
