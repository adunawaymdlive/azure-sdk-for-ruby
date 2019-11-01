# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2017_08_01_preview
  module Models
    #
    # The Advanced Threat Protection resource.
    #
    class AdvancedThreatProtectionSetting < Resource

      include MsRestAzure

      # @return [Boolean] Indicates whether Advanced Threat Protection is
      # enabled.
      attr_accessor :is_enabled


      #
      # Mapper for AdvancedThreatProtectionSetting class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AdvancedThreatProtectionSetting',
          type: {
            name: 'Composite',
            class_name: 'AdvancedThreatProtectionSetting',
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
              is_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isEnabled',
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