# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Scheduler
  module Models
    #
    # Model object.
    #
    class OAuthAuthentication < HttpAuthentication

      include MsRestAzure

      # @return [String] Gets or sets the secret.
      attr_accessor :secret

      # @return [String] Gets or sets the tenant.
      attr_accessor :tenant

      # @return [String] Gets or sets the audience.
      attr_accessor :audience

      # @return [String] Gets or sets the client identifier.
      attr_accessor :client_id

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        # Nothing to validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.type
        output_object['type'] = serialized_property unless serialized_property.nil?

        serialized_property = object.secret
        output_object['secret'] = serialized_property unless serialized_property.nil?

        serialized_property = object.tenant
        output_object['tenant'] = serialized_property unless serialized_property.nil?

        serialized_property = object.audience
        output_object['audience'] = serialized_property unless serialized_property.nil?

        serialized_property = object.client_id
        output_object['clientId'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [OAuthAuthentication] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = OAuthAuthentication.new

        deserialized_property = object['type']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = HttpAuthenticationType.constants.any? { |e| HttpAuthenticationType.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum HttpAuthenticationType does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.type = deserialized_property

        deserialized_property = object['secret']
        output_object.secret = deserialized_property

        deserialized_property = object['tenant']
        output_object.tenant = deserialized_property

        deserialized_property = object['audience']
        output_object.audience = deserialized_property

        deserialized_property = object['clientId']
        output_object.client_id = deserialized_property

        output_object
      end
    end
  end
end