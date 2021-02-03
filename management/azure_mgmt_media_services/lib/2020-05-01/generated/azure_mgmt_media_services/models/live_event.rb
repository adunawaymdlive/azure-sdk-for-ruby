# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # The live event.
    #
    class LiveEvent < TrackedResource

      include MsRestAzure

      # @return [String] A description for the live event.
      attr_accessor :description

      # @return [LiveEventInput] Live event input settings. It defines how the
      # live event receives input from a contribution encoder.
      attr_accessor :input

      # @return [LiveEventPreview] Live event preview settings. Preview allows
      # live event producers to preview the live streaming content without
      # creating any live output.
      attr_accessor :preview

      # @return [LiveEventEncoding] Encoding settings for the live event. It
      # configures whether a live encoder is used for the live event and
      # settings for the live encoder if it is used.
      attr_accessor :encoding

      # @return [Array<LiveEventTranscription>] Live transcription settings for
      # the live event. See https://go.microsoft.com/fwlink/?linkid=2133742 for
      # more information about the live transcription feature.
      attr_accessor :transcriptions

      # @return [String] The provisioning state of the live event.
      attr_accessor :provisioning_state

      # @return [LiveEventResourceState] The resource state of the live event.
      # See https://go.microsoft.com/fwlink/?linkid=2139012 for more
      # information. Possible values include: 'Stopped', 'Allocating',
      # 'StandBy', 'Starting', 'Running', 'Stopping', 'Deleting'
      attr_accessor :resource_state

      # @return [CrossSiteAccessPolicies] Live event cross site access
      # policies.
      attr_accessor :cross_site_access_policies

      # @return [Boolean] Specifies whether a static hostname would be assigned
      # to the live event preview and ingest endpoints. This value can only be
      # updated if the live event is in Standby state
      attr_accessor :use_static_hostname

      # @return [String] When useStaticHostname is set to true, the
      # hostnamePrefix specifies the first part of the hostname assigned to the
      # live event preview and ingest endpoints. The final hostname would be a
      # combination of this prefix, the media service account name and a short
      # code for the Azure Media Services data center.
      attr_accessor :hostname_prefix

      # @return [Array<StreamOptionsFlag>] The options to use for the
      # LiveEvent. This value is specified at creation time and cannot be
      # updated. The valid values for the array entry values are 'Default' and
      # 'LowLatency'.
      attr_accessor :stream_options

      # @return [DateTime] The creation time for the live event
      attr_accessor :created

      # @return [DateTime] The last modified time of the live event.
      attr_accessor :last_modified


      #
      # Mapper for LiveEvent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LiveEvent',
          type: {
            name: 'Composite',
            class_name: 'LiveEvent',
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
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
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
              input: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.input',
                type: {
                  name: 'Composite',
                  class_name: 'LiveEventInput'
                }
              },
              preview: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.preview',
                type: {
                  name: 'Composite',
                  class_name: 'LiveEventPreview'
                }
              },
              encoding: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.encoding',
                type: {
                  name: 'Composite',
                  class_name: 'LiveEventEncoding'
                }
              },
              transcriptions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.transcriptions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LiveEventTranscriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LiveEventTranscription'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              resource_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceState',
                type: {
                  name: 'String'
                }
              },
              cross_site_access_policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.crossSiteAccessPolicies',
                type: {
                  name: 'Composite',
                  class_name: 'CrossSiteAccessPolicies'
                }
              },
              use_static_hostname: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.useStaticHostname',
                type: {
                  name: 'Boolean'
                }
              },
              hostname_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hostnamePrefix',
                type: {
                  name: 'String'
                }
              },
              stream_options: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.streamOptions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StreamOptionsFlagElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              created: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.created',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModified',
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