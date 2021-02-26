# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Database connection string value to type pair.
    #
    class ConnStringValueTypePair

      include MsRestAzure

      # @return [String] Value of pair.
      attr_accessor :value

      # @return [ConnectionStringType] Type of database. Possible values
      # include: 'MySql', 'SQLServer', 'SQLAzure', 'Custom', 'NotificationHub',
      # 'ServiceBus', 'EventHub', 'ApiHub', 'DocDb', 'RedisCache', 'PostgreSQL'
      attr_accessor :type


      #
      # Mapper for ConnStringValueTypePair class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnStringValueTypePair',
          type: {
            name: 'Composite',
            class_name: 'ConnStringValueTypePair',
            model_properties: {
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'ConnectionStringType'
                }
              }
            }
          }
        }
      end
    end
  end
end
