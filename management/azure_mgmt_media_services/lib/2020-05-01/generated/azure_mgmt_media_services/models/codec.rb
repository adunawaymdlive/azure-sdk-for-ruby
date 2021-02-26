# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # Describes the basic properties of all codecs.
    #
    class Codec

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["#Microsoft.Media.Audio"] = "Audio"
      @@discriminatorMap["#Microsoft.Media.AacAudio"] = "AacAudio"
      @@discriminatorMap["#Microsoft.Media.Video"] = "Video"
      @@discriminatorMap["#Microsoft.Media.H265Video"] = "H265Video"
      @@discriminatorMap["#Microsoft.Media.CopyVideo"] = "CopyVideo"
      @@discriminatorMap["#Microsoft.Media.Image"] = "Image"
      @@discriminatorMap["#Microsoft.Media.CopyAudio"] = "CopyAudio"
      @@discriminatorMap["#Microsoft.Media.H264Video"] = "H264Video"
      @@discriminatorMap["#Microsoft.Media.JpgImage"] = "JpgImage"
      @@discriminatorMap["#Microsoft.Media.PngImage"] = "PngImage"

      def initialize
        @odatatype = "Codec"
      end

      attr_accessor :odatatype

      # @return [String] An optional label for the codec. The label can be used
      # to control muxing behavior.
      attr_accessor :label


      #
      # Mapper for Codec class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Codec',
          type: {
            name: 'Composite',
            polymorphic_discriminator: '@odata.type',
            uber_parent: 'Codec',
            class_name: 'Codec',
            model_properties: {
              label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'label',
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
