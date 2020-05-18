# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataShare::Mgmt::V2019_11_01
  module Models
    #
    # metric specifications for the operation
    #
    class OperationMetaMetricSpecification

      include MsRestAzure

      # @return [String] aggregation type of metric
      attr_accessor :aggregation_type

      # @return [Array<DimensionProperties>] properties for dimension
      attr_accessor :dimensions

      # @return [String] description of the metric
      attr_accessor :display_description

      # @return [String] localized name of the metric
      attr_accessor :display_name

      # @return [String] enable regional mdm account
      attr_accessor :enable_regional_mdm_account

      # @return [String] internal metric name
      attr_accessor :internal_metric_name

      # @return [String] name of the metric
      attr_accessor :name

      # @return [String] dimension name use to replace resource id if specified
      attr_accessor :resource_id_dimension_name_override

      # @return [Array<String>] supported aggregation types
      attr_accessor :supported_aggregation_types

      # @return [Array<String>] supported time grain types
      attr_accessor :supported_time_grain_types

      # @return [String] units for the metric
      attr_accessor :unit


      #
      # Mapper for OperationMetaMetricSpecification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationMetaMetricSpecification',
          type: {
            name: 'Composite',
            class_name: 'OperationMetaMetricSpecification',
            model_properties: {
              aggregation_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'aggregationType',
                type: {
                  name: 'String'
                }
              },
              dimensions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dimensions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DimensionPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DimensionProperties'
                      }
                  }
                }
              },
              display_description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayDescription',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              enable_regional_mdm_account: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enableRegionalMdmAccount',
                type: {
                  name: 'String'
                }
              },
              internal_metric_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'internalMetricName',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              resource_id_dimension_name_override: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceIdDimensionNameOverride',
                type: {
                  name: 'String'
                }
              },
              supported_aggregation_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'supportedAggregationTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              supported_time_grain_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'supportedTimeGrainTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unit',
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
