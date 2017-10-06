# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::TrafficManager::Api_2017_09_01_preview
  module Models
    #
    # Class representing a Traffic Manager HeatMap traffic flow properties.
    #
    class TrafficFlow

      include MsRestAzure

      # @return [String] The IP address that this query experience originated
      # from.
      attr_accessor :source_ip

      # @return [Float] The approximate latitude that these queries originated
      # from.
      attr_accessor :latitude

      # @return [Float] The approximate longitude that these queries originated
      # from.
      attr_accessor :longitude

      # @return [Array<QueryExperience>] The query experiences produced in this
      # HeatMap calculation.
      attr_accessor :query_experiences


      #
      # Mapper for TrafficFlow class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TrafficFlow',
          type: {
            name: 'Composite',
            class_name: 'TrafficFlow',
            model_properties: {
              source_ip: {
                required: false,
                serialized_name: 'sourceIp',
                type: {
                  name: 'String'
                }
              },
              latitude: {
                required: false,
                serialized_name: 'latitude',
                type: {
                  name: 'Double'
                }
              },
              longitude: {
                required: false,
                serialized_name: 'longitude',
                type: {
                  name: 'Double'
                }
              },
              query_experiences: {
                required: false,
                serialized_name: 'queryExperiences',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'QueryExperienceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'QueryExperience'
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
