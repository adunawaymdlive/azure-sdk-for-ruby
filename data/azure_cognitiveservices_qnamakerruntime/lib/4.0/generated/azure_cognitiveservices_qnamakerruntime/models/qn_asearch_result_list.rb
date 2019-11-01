# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::QnamakerRuntime::V4_0
  module Models
    #
    # Represents List of Question Answers.
    #
    class QnASearchResultList

      include MsRestAzure

      # @return [Array<QnASearchResult>] Represents Search Result list.
      attr_accessor :answers


      #
      # Mapper for QnASearchResultList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'QnASearchResultList',
          type: {
            name: 'Composite',
            class_name: 'QnASearchResultList',
            model_properties: {
              answers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'answers',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'QnASearchResultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'QnASearchResult'
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