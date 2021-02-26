# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2021_01_15
  module Models
    #
    # Percentile Metric data
    #
    class PercentileMetric

      include MsRestAzure

      # @return [DateTime] The start time for the metric (ISO-8601 format).
      attr_accessor :start_time

      # @return [DateTime] The end time for the metric (ISO-8601 format).
      attr_accessor :end_time

      # @return [String] The time grain to be used to summarize the metric
      # values.
      attr_accessor :time_grain

      # @return [UnitType] The unit of the metric. Possible values include:
      # 'Count', 'Bytes', 'Seconds', 'Percent', 'CountPerSecond',
      # 'BytesPerSecond', 'Milliseconds'
      attr_accessor :unit

      # @return [MetricName] The name information for the metric.
      attr_accessor :name

      # @return [Array<PercentileMetricValue>] The percentile metric values for
      # the specified time window and timestep.
      attr_accessor :metric_values


      #
      # Mapper for PercentileMetric class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PercentileMetric',
          type: {
            name: 'Composite',
            class_name: 'PercentileMetric',
            model_properties: {
              start_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              time_grain: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'timeGrain',
                type: {
                  name: 'String'
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unit',
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
                  name: 'Composite',
                  class_name: 'MetricName'
                }
              },
              metric_values: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'metricValues',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PercentileMetricValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PercentileMetricValue'
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
