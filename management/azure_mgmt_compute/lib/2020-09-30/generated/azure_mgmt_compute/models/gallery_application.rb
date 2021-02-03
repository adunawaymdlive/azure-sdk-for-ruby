# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_09_30
  module Models
    #
    # Specifies information about the gallery Application Definition that you
    # want to create or update.
    #
    class GalleryApplication < Resource

      include MsRestAzure

      # @return [String] The description of this gallery Application Definition
      # resource. This property is updatable.
      attr_accessor :description

      # @return [String] The Eula agreement for the gallery Application
      # Definition.
      attr_accessor :eula

      # @return [String] The privacy statement uri.
      attr_accessor :privacy_statement_uri

      # @return [String] The release note uri.
      attr_accessor :release_note_uri

      # @return [DateTime] The end of life date of the gallery Application
      # Definition. This property can be used for decommissioning purposes.
      # This property is updatable.
      attr_accessor :end_of_life_date

      # @return [OperatingSystemTypes] This property allows you to specify the
      # supported type of the OS that application is built for. <br><br>
      # Possible values are: <br><br> **Windows** <br><br> **Linux**. Possible
      # values include: 'Windows', 'Linux'
      attr_accessor :supported_ostype


      #
      # Mapper for GalleryApplication class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GalleryApplication',
          type: {
            name: 'Composite',
            class_name: 'GalleryApplication',
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
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              eula: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.eula',
                type: {
                  name: 'String'
                }
              },
              privacy_statement_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privacyStatementUri',
                type: {
                  name: 'String'
                }
              },
              release_note_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.releaseNoteUri',
                type: {
                  name: 'String'
                }
              },
              end_of_life_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.endOfLifeDate',
                type: {
                  name: 'DateTime'
                }
              },
              supported_ostype: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.supportedOSType',
                type: {
                  name: 'Enum',
                  module: 'OperatingSystemTypes'
                }
              }
            }
          }
        }
      end
    end
  end
end