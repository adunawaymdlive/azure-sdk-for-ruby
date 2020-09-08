# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # User Entity Base Parameters set.
    #
    class UserEntityBaseParameters

      include MsRestAzure

      # @return [UserState] Account state. Specifies whether the user is active
      # or not. Blocked users are unable to sign into the developer portal or
      # call any APIs of subscribed products. Default state is Active. Possible
      # values include: 'active', 'blocked', 'pending', 'deleted'. Default
      # value: 'active' .
      attr_accessor :state

      # @return [String] Optional note about a user set by the administrator.
      attr_accessor :note

      # @return [Array<UserIdentityContract>] Collection of user identities.
      attr_accessor :identities


      #
      # Mapper for UserEntityBaseParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UserEntityBaseParameters',
          type: {
            name: 'Composite',
            class_name: 'UserEntityBaseParameters',
            model_properties: {
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'state',
                default_value: 'active',
                type: {
                  name: 'String'
                }
              },
              note: {
                client_side_validation: true,
                required: false,
                serialized_name: 'note',
                type: {
                  name: 'String'
                }
              },
              identities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UserIdentityContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserIdentityContract'
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