# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_10_15_preview
  module Models
    #
    # Information about the delivery for an event subscription with resource
    # identity.
    #
    class DeliveryWithResourceIdentity

      include MsRestAzure

      # @return [EventSubscriptionIdentity] The identity to use when delivering
      # events.
      attr_accessor :identity

      # @return [EventSubscriptionDestination] Information about the
      # destination where events have to be delivered for the event
      # subscription.
      # Uses Azure Event Grid's identity to acquire the authentication tokens
      # being used during delivery / dead-lettering.
      attr_accessor :destination


      #
      # Mapper for DeliveryWithResourceIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeliveryWithResourceIdentity',
          type: {
            name: 'Composite',
            class_name: 'DeliveryWithResourceIdentity',
            model_properties: {
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'EventSubscriptionIdentity'
                }
              },
              destination: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destination',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'endpointType',
                  uber_parent: 'EventSubscriptionDestination',
                  class_name: 'EventSubscriptionDestination'
                }
              }
            }
          }
        }
      end
    end
  end
end
