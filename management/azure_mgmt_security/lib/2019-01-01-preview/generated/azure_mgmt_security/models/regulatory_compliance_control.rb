# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2019_01_01_preview
  module Models
    #
    # Regulatory compliance control details and state
    #
    class RegulatoryComplianceControl < Resource

      include MsRestAzure

      # @return [String] The description of the regulatory compliance control
      attr_accessor :description

      # @return [State] Aggregative state based on the control's supported
      # assessments states. Possible values include: 'Passed', 'Failed',
      # 'Skipped', 'Unsupported'
      attr_accessor :state

      # @return [Integer] The number of supported regulatory compliance
      # assessments of the given control with a passed state
      attr_accessor :passed_assessments

      # @return [Integer] The number of supported regulatory compliance
      # assessments of the given control with a failed state
      attr_accessor :failed_assessments

      # @return [Integer] The number of supported regulatory compliance
      # assessments of the given control with a skipped state
      attr_accessor :skipped_assessments


      #
      # Mapper for RegulatoryComplianceControl class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RegulatoryComplianceControl',
          type: {
            name: 'Composite',
            class_name: 'RegulatoryComplianceControl',
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
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              passed_assessments: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.passedAssessments',
                type: {
                  name: 'Number'
                }
              },
              failed_assessments: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.failedAssessments',
                type: {
                  name: 'Number'
                }
              },
              skipped_assessments: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.skippedAssessments',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
