# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataShare::Mgmt::V2019_11_01
  module Models
    #
    # A type of synchronization setting based on schedule
    #
    class ScheduledSourceSynchronizationSetting < SourceShareSynchronizationSetting

      include MsRestAzure


      def initialize
        @kind = "ScheduleBased"
      end

      attr_accessor :kind

      # @return [RecurrenceInterval] Recurrence Interval. Possible values
      # include: 'Hour', 'Day'
      attr_accessor :recurrence_interval

      # @return [DateTime] Synchronization time
      attr_accessor :synchronization_time


      #
      # Mapper for ScheduledSourceSynchronizationSetting class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ScheduleBased',
          type: {
            name: 'Composite',
            class_name: 'ScheduledSourceSynchronizationSetting',
            model_properties: {
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              recurrence_interval: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.recurrenceInterval',
                type: {
                  name: 'String'
                }
              },
              synchronization_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.synchronizationTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
