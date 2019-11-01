# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_03_01
  module Models
    #
    # Contains information about the job.
    #
    class Job < Resource

      include MsRestAzure

      # @return [String] Describe the experiment information of the job
      attr_accessor :experiment_name

      # @return [Integer] Priority associated with the job. Priority associated
      # with the job. Priority values can range from -1000 to 1000, with -1000
      # being the lowest priority and 1000 being the highest priority. The
      # default value is 0. Default value: 0 .
      attr_accessor :priority

      # @return [ResourceId] Specifies the Id of the cluster on which this job
      # will run.
      attr_accessor :cluster

      # @return [MountVolumes] Information on mount volumes to be used by the
      # job. These volumes will be mounted before the job execution and will be
      # unmounted after the job completion. The volumes will be mounted at
      # location specified by $AZ_BATCHAI_JOB_MOUNT_ROOT environment variable.
      attr_accessor :mount_volumes

      # @return [String] A segment of job's output directories path created by
      # BatchAI. Batch AI creates job's output directories under an unique path
      # to avoid conflicts between jobs. This value contains a path segment
      # generated by Batch AI to make the path unique and can be used to find
      # the output directory on the node or mounted filesystem.
      attr_accessor :job_output_directory_path_segment

      # @return [Integer] Number of compute nodes to run the job on. The job
      # will be gang scheduled on that many compute nodes
      attr_accessor :node_count

      # @return [ContainerSettings] If provided the job will run in the
      # specified container. If the container was downloaded as part of cluster
      # setup then the same container image will be used. If not provided, the
      # job will run on the VM.
      attr_accessor :container_settings

      # @return [ToolType] The toolkit type of this job. Possible values are:
      # cntk, tensorflow, caffe, caffe2, chainer, pytorch, custom. Possible
      # values include: 'cntk', 'tensorflow', 'caffe', 'caffe2', 'chainer',
      # 'custom'
      attr_accessor :tool_type

      # @return [CNTKsettings] Specifies the settings for CNTK (aka Microsoft
      # Cognitive Toolkit) job.
      attr_accessor :cntk_settings

      # @return [PyTorchSettings] Specifies the settings for pyTorch job.
      attr_accessor :py_torch_settings

      # @return [TensorFlowSettings] Specifies the settings for Tensor Flow
      # job.
      attr_accessor :tensor_flow_settings

      # @return [CaffeSettings] Specifies the settings for Caffe job.
      attr_accessor :caffe_settings

      # @return [ChainerSettings] Specifies the settings for Chainer job.
      attr_accessor :chainer_settings

      # @return [CustomToolkitSettings] Specifies the settings for custom tool
      # kit job.
      attr_accessor :custom_toolkit_settings

      # @return [JobPreparation] Specifies the actions to be performed before
      # tool kit is launched. The specified actions will run on all the nodes
      # that are part of the job
      attr_accessor :job_preparation

      # @return [String] The path where the Batch AI service will upload stdout
      # and stderror of the job.
      attr_accessor :std_out_err_path_prefix

      # @return [Array<InputDirectory>] Specifies the list of input directories
      # for the Job.
      attr_accessor :input_directories

      # @return [Array<OutputDirectory>] Specifies the list of output
      # directories where the models will be created.
      attr_accessor :output_directories

      # @return [Array<EnvironmentVariable>] Additional environment variables
      # to set on the job. Batch AI will setup these additional environment
      # variables for the job.
      attr_accessor :environment_variables

      # @return [Array<EnvironmentVariableWithSecretValue>] Additional
      # environment variables with secret values to set on the job. Batch AI
      # will setup these additional environment variables for the job. Server
      # will never report values of these variables back.
      attr_accessor :secrets

      # @return [JobPropertiesConstraints] Constraints associated with the Job.
      attr_accessor :constraints

      # @return [DateTime] The job creation time. The creation time of the job.
      attr_accessor :creation_time

      # @return [ProvisioningState] The provisioned state of the Batch AI job.
      # Possible values include: 'creating', 'succeeded', 'failed', 'deleting'
      attr_accessor :provisioning_state

      # @return [DateTime] The time at which the job entered its current
      # provisioning state. The time at which the job entered its current
      # provisioning state.
      attr_accessor :provisioning_state_transition_time

      # @return [ExecutionState] The current state of the job. The current
      # state of the job. Possible values are: queued - The job is queued and
      # able to run. A job enters this state when it is created, or when it is
      # awaiting a retry after a failed run. running - The job is running on a
      # compute cluster. This includes job-level preparation such as
      # downloading resource files or set up container specified on the job -
      # it does not necessarily mean that the job command line has started
      # executing. terminating - The job is terminated by the user, the
      # terminate operation is in progress. succeeded - The job has completed
      # running successfully and exited with exit code 0. failed - The job has
      # finished unsuccessfully (failed with a non-zero exit code) and has
      # exhausted its retry limit. A job is also marked as failed if an error
      # occurred launching the job. Possible values include: 'queued',
      # 'running', 'terminating', 'succeeded', 'failed'
      attr_accessor :execution_state

      # @return [DateTime] The time at which the job entered its current
      # execution state. The time at which the job entered its current
      # execution state.
      attr_accessor :execution_state_transition_time

      # @return [JobPropertiesExecutionInfo] Contains information about the
      # execution of a job in the Azure Batch service.
      attr_accessor :execution_info


      #
      # Mapper for Job class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Job',
          type: {
            name: 'Composite',
            class_name: 'Job',
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
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
              experiment_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.experimentName',
                type: {
                  name: 'String'
                }
              },
              priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.priority',
                default_value: 0,
                type: {
                  name: 'Number'
                }
              },
              cluster: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.cluster',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceId'
                }
              },
              mount_volumes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.mountVolumes',
                type: {
                  name: 'Composite',
                  class_name: 'MountVolumes'
                }
              },
              job_output_directory_path_segment: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.jobOutputDirectoryPathSegment',
                type: {
                  name: 'String'
                }
              },
              node_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.nodeCount',
                type: {
                  name: 'Number'
                }
              },
              container_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.containerSettings',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerSettings'
                }
              },
              tool_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.toolType',
                type: {
                  name: 'String'
                }
              },
              cntk_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.cntkSettings',
                type: {
                  name: 'Composite',
                  class_name: 'CNTKsettings'
                }
              },
              py_torch_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.pyTorchSettings',
                type: {
                  name: 'Composite',
                  class_name: 'PyTorchSettings'
                }
              },
              tensor_flow_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tensorFlowSettings',
                type: {
                  name: 'Composite',
                  class_name: 'TensorFlowSettings'
                }
              },
              caffe_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.caffeSettings',
                type: {
                  name: 'Composite',
                  class_name: 'CaffeSettings'
                }
              },
              chainer_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.chainerSettings',
                type: {
                  name: 'Composite',
                  class_name: 'ChainerSettings'
                }
              },
              custom_toolkit_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.customToolkitSettings',
                type: {
                  name: 'Composite',
                  class_name: 'CustomToolkitSettings'
                }
              },
              job_preparation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.jobPreparation',
                type: {
                  name: 'Composite',
                  class_name: 'JobPreparation'
                }
              },
              std_out_err_path_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.stdOutErrPathPrefix',
                type: {
                  name: 'String'
                }
              },
              input_directories: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.inputDirectories',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'InputDirectoryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InputDirectory'
                      }
                  }
                }
              },
              output_directories: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.outputDirectories',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'OutputDirectoryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'OutputDirectory'
                      }
                  }
                }
              },
              environment_variables: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.environmentVariables',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EnvironmentVariableElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EnvironmentVariable'
                      }
                  }
                }
              },
              secrets: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.secrets',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EnvironmentVariableWithSecretValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EnvironmentVariableWithSecretValue'
                      }
                  }
                }
              },
              constraints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.constraints',
                type: {
                  name: 'Composite',
                  class_name: 'JobPropertiesConstraints'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'ProvisioningState'
                }
              },
              provisioning_state_transition_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningStateTransitionTime',
                type: {
                  name: 'DateTime'
                }
              },
              execution_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.executionState',
                type: {
                  name: 'Enum',
                  module: 'ExecutionState'
                }
              },
              execution_state_transition_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.executionStateTransitionTime',
                type: {
                  name: 'DateTime'
                }
              },
              execution_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.executionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'JobPropertiesExecutionInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end