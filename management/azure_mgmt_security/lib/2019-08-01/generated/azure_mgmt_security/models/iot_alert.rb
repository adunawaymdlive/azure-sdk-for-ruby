# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2019_08_01
  module Models
    #
    # IoT alert
    #
    class IotAlert

      include MsRestAzure

      # @return [String] Holds the product canonical identifier of the alert
      # within the scope of a product
      attr_accessor :system_alert_id

      # @return [String] Display name of the main entity being reported on
      attr_accessor :compromised_entity

      # @return [String] The type name of the alert
      attr_accessor :alert_type

      # @return [String] The impact start time of the alert (the time of the
      # first event or activity included in the alert)
      attr_accessor :start_time_utc

      # @return [String] The impact end time of the alert (the time of the last
      # event or activity included in the alert)
      attr_accessor :end_time_utc

      # @return A list of entities related to the alert
      attr_accessor :entities

      # @return A bag of fields which extends the alert information
      attr_accessor :extended_properties


      #
      # Mapper for IotAlert class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IotAlert',
          type: {
            name: 'Composite',
            class_name: 'IotAlert',
            model_properties: {
              system_alert_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.systemAlertId',
                type: {
                  name: 'String'
                }
              },
              compromised_entity: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.compromisedEntity',
                type: {
                  name: 'String'
                }
              },
              alert_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.alertType',
                type: {
                  name: 'String'
                }
              },
              start_time_utc: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.startTimeUtc',
                type: {
                  name: 'String'
                }
              },
              end_time_utc: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.endTimeUtc',
                type: {
                  name: 'String'
                }
              },
              entities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.entities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              extended_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.extendedProperties',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end