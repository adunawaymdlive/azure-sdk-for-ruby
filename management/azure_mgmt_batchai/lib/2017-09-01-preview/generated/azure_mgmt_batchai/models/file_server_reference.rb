# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2017_09_01_preview
  module Models
    #
    # Provides required information, for the service to be able to mount Azure
    # FileShare on the cluster nodes.
    #
    class FileServerReference

      include MsRestAzure

      # @return [ResourceId] Reference to the file server resource.
      attr_accessor :file_server

      # @return [String] Specifies the source directory in File Server that
      # needs to be mounted. If this property is not specified, the entire File
      # Server will be mounted.
      attr_accessor :source_directory

      # @return [String] Specifies the relative path on the compute node where
      # the File Server will be mounted. Note that all file shares will be
      # mounted under $AZ_BATCHAI_MOUNT_ROOT location.
      attr_accessor :relative_mount_path

      # @return [String] Specifies the mount options for File Server.
      attr_accessor :mount_options


      #
      # Mapper for FileServerReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FileServerReference',
          type: {
            name: 'Composite',
            class_name: 'FileServerReference',
            model_properties: {
              file_server: {
                client_side_validation: true,
                required: true,
                serialized_name: 'fileServer',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceId'
                }
              },
              source_directory: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceDirectory',
                type: {
                  name: 'String'
                }
              },
              relative_mount_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'relativeMountPath',
                type: {
                  name: 'String'
                }
              },
              mount_options: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mountOptions',
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