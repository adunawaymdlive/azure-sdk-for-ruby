# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2015_06_01_preview
  module Models
    #
    # Represents a user that is recommended to be allowed for a certain rule
    #
    class UserRecommendation

      include MsRestAzure

      # @return [String] Represents a user that is recommended to be allowed
      # for a certain rule
      attr_accessor :username

      # @return [Enum] Possible values include: 'Recommended', 'Add', 'Remove'
      attr_accessor :recommendation_action


      #
      # Mapper for UserRecommendation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UserRecommendation',
          type: {
            name: 'Composite',
            class_name: 'UserRecommendation',
            model_properties: {
              username: {
                client_side_validation: true,
                required: false,
                serialized_name: 'username',
                type: {
                  name: 'String'
                }
              },
              recommendation_action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recommendationAction',
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
