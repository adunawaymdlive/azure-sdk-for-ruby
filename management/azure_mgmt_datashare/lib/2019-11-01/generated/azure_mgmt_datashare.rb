# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2019-11-01/generated/azure_mgmt_datashare/module_definition'
require 'ms_rest_azure'

module Azure::DataShare::Mgmt::V2019_11_01
  autoload :Accounts,                                           '2019-11-01/generated/azure_mgmt_datashare/accounts.rb'
  autoload :ConsumerInvitations,                                '2019-11-01/generated/azure_mgmt_datashare/consumer_invitations.rb'
  autoload :DataSets,                                           '2019-11-01/generated/azure_mgmt_datashare/data_sets.rb'
  autoload :DataSetMappings,                                    '2019-11-01/generated/azure_mgmt_datashare/data_set_mappings.rb'
  autoload :Invitations,                                        '2019-11-01/generated/azure_mgmt_datashare/invitations.rb'
  autoload :Operations,                                         '2019-11-01/generated/azure_mgmt_datashare/operations.rb'
  autoload :Shares,                                             '2019-11-01/generated/azure_mgmt_datashare/shares.rb'
  autoload :ProviderShareSubscriptions,                         '2019-11-01/generated/azure_mgmt_datashare/provider_share_subscriptions.rb'
  autoload :ShareSubscriptions,                                 '2019-11-01/generated/azure_mgmt_datashare/share_subscriptions.rb'
  autoload :ConsumerSourceDataSets,                             '2019-11-01/generated/azure_mgmt_datashare/consumer_source_data_sets.rb'
  autoload :SynchronizationSettings,                            '2019-11-01/generated/azure_mgmt_datashare/synchronization_settings.rb'
  autoload :Triggers,                                           '2019-11-01/generated/azure_mgmt_datashare/triggers.rb'
  autoload :DataShareManagementClient,                          '2019-11-01/generated/azure_mgmt_datashare/data_share_management_client.rb'

  module Models
    autoload :SourceShareSynchronizationSettingList,              '2019-11-01/generated/azure_mgmt_datashare/models/source_share_synchronization_setting_list.rb'
    autoload :Identity,                                           '2019-11-01/generated/azure_mgmt_datashare/models/identity.rb'
    autoload :ShareSubscriptionSynchronization,                   '2019-11-01/generated/azure_mgmt_datashare/models/share_subscription_synchronization.rb'
    autoload :DataShareErrorInfo,                                 '2019-11-01/generated/azure_mgmt_datashare/models/data_share_error_info.rb'
    autoload :ShareSubscriptionSynchronizationList,               '2019-11-01/generated/azure_mgmt_datashare/models/share_subscription_synchronization_list.rb'
    autoload :AccountUpdateParameters,                            '2019-11-01/generated/azure_mgmt_datashare/models/account_update_parameters.rb'
    autoload :Synchronize,                                        '2019-11-01/generated/azure_mgmt_datashare/models/synchronize.rb'
    autoload :AccountList,                                        '2019-11-01/generated/azure_mgmt_datashare/models/account_list.rb'
    autoload :ShareSynchronizationList,                           '2019-11-01/generated/azure_mgmt_datashare/models/share_synchronization_list.rb'
    autoload :SynchronizationDetails,                             '2019-11-01/generated/azure_mgmt_datashare/models/synchronization_details.rb'
    autoload :ShareList,                                          '2019-11-01/generated/azure_mgmt_datashare/models/share_list.rb'
    autoload :DataSetList,                                        '2019-11-01/generated/azure_mgmt_datashare/models/data_set_list.rb'
    autoload :ShareSynchronization,                               '2019-11-01/generated/azure_mgmt_datashare/models/share_synchronization.rb'
    autoload :DataSetMappingList,                                 '2019-11-01/generated/azure_mgmt_datashare/models/data_set_mapping_list.rb'
    autoload :ConsumerInvitationList,                             '2019-11-01/generated/azure_mgmt_datashare/models/consumer_invitation_list.rb'
    autoload :InvitationList,                                     '2019-11-01/generated/azure_mgmt_datashare/models/invitation_list.rb'
    autoload :SynchronizationSettingList,                         '2019-11-01/generated/azure_mgmt_datashare/models/synchronization_setting_list.rb'
    autoload :OperationMetaLogSpecification,                      '2019-11-01/generated/azure_mgmt_datashare/models/operation_meta_log_specification.rb'
    autoload :SynchronizationDetailsList,                         '2019-11-01/generated/azure_mgmt_datashare/models/synchronization_details_list.rb'
    autoload :OperationMetaMetricSpecification,                   '2019-11-01/generated/azure_mgmt_datashare/models/operation_meta_metric_specification.rb'
    autoload :OperationModel,                                     '2019-11-01/generated/azure_mgmt_datashare/models/operation_model.rb'
    autoload :ProviderShareSubscriptionList,                      '2019-11-01/generated/azure_mgmt_datashare/models/provider_share_subscription_list.rb'
    autoload :ProxyDto,                                           '2019-11-01/generated/azure_mgmt_datashare/models/proxy_dto.rb'
    autoload :DefaultDto,                                         '2019-11-01/generated/azure_mgmt_datashare/models/default_dto.rb'
    autoload :DataShareError,                                     '2019-11-01/generated/azure_mgmt_datashare/models/data_share_error.rb'
    autoload :OperationModelProperties,                           '2019-11-01/generated/azure_mgmt_datashare/models/operation_model_properties.rb'
    autoload :ShareSubscriptionList,                              '2019-11-01/generated/azure_mgmt_datashare/models/share_subscription_list.rb'
    autoload :OperationMetaServiceSpecification,                  '2019-11-01/generated/azure_mgmt_datashare/models/operation_meta_service_specification.rb'
    autoload :OperationResponse,                                  '2019-11-01/generated/azure_mgmt_datashare/models/operation_response.rb'
    autoload :TriggerList,                                        '2019-11-01/generated/azure_mgmt_datashare/models/trigger_list.rb'
    autoload :ConsumerSourceDataSetList,                          '2019-11-01/generated/azure_mgmt_datashare/models/consumer_source_data_set_list.rb'
    autoload :OperationList,                                      '2019-11-01/generated/azure_mgmt_datashare/models/operation_list.rb'
    autoload :SourceShareSynchronizationSetting,                  '2019-11-01/generated/azure_mgmt_datashare/models/source_share_synchronization_setting.rb'
    autoload :DimensionProperties,                                '2019-11-01/generated/azure_mgmt_datashare/models/dimension_properties.rb'
    autoload :Account,                                            '2019-11-01/generated/azure_mgmt_datashare/models/account.rb'
    autoload :ConsumerInvitation,                                 '2019-11-01/generated/azure_mgmt_datashare/models/consumer_invitation.rb'
    autoload :DataSet,                                            '2019-11-01/generated/azure_mgmt_datashare/models/data_set.rb'
    autoload :DataSetMapping,                                     '2019-11-01/generated/azure_mgmt_datashare/models/data_set_mapping.rb'
    autoload :Invitation,                                         '2019-11-01/generated/azure_mgmt_datashare/models/invitation.rb'
    autoload :Share,                                              '2019-11-01/generated/azure_mgmt_datashare/models/share.rb'
    autoload :ProviderShareSubscription,                          '2019-11-01/generated/azure_mgmt_datashare/models/provider_share_subscription.rb'
    autoload :ShareSubscription,                                  '2019-11-01/generated/azure_mgmt_datashare/models/share_subscription.rb'
    autoload :ConsumerSourceDataSet,                              '2019-11-01/generated/azure_mgmt_datashare/models/consumer_source_data_set.rb'
    autoload :SynchronizationSetting,                             '2019-11-01/generated/azure_mgmt_datashare/models/synchronization_setting.rb'
    autoload :Trigger,                                            '2019-11-01/generated/azure_mgmt_datashare/models/trigger.rb'
    autoload :ScheduledSynchronizationSetting,                    '2019-11-01/generated/azure_mgmt_datashare/models/scheduled_synchronization_setting.rb'
    autoload :ScheduledTrigger,                                   '2019-11-01/generated/azure_mgmt_datashare/models/scheduled_trigger.rb'
    autoload :BlobDataSet,                                        '2019-11-01/generated/azure_mgmt_datashare/models/blob_data_set.rb'
    autoload :BlobFolderDataSet,                                  '2019-11-01/generated/azure_mgmt_datashare/models/blob_folder_data_set.rb'
    autoload :BlobContainerDataSet,                               '2019-11-01/generated/azure_mgmt_datashare/models/blob_container_data_set.rb'
    autoload :ADLSGen2FileDataSet,                                '2019-11-01/generated/azure_mgmt_datashare/models/adlsgen2file_data_set.rb'
    autoload :ADLSGen2FolderDataSet,                              '2019-11-01/generated/azure_mgmt_datashare/models/adlsgen2folder_data_set.rb'
    autoload :ADLSGen2FileSystemDataSet,                          '2019-11-01/generated/azure_mgmt_datashare/models/adlsgen2file_system_data_set.rb'
    autoload :ADLSGen1FolderDataSet,                              '2019-11-01/generated/azure_mgmt_datashare/models/adlsgen1folder_data_set.rb'
    autoload :ADLSGen1FileDataSet,                                '2019-11-01/generated/azure_mgmt_datashare/models/adlsgen1file_data_set.rb'
    autoload :KustoClusterDataSet,                                '2019-11-01/generated/azure_mgmt_datashare/models/kusto_cluster_data_set.rb'
    autoload :KustoDatabaseDataSet,                               '2019-11-01/generated/azure_mgmt_datashare/models/kusto_database_data_set.rb'
    autoload :SqlDWTableDataSet,                                  '2019-11-01/generated/azure_mgmt_datashare/models/sql_dwtable_data_set.rb'
    autoload :SqlDBTableDataSet,                                  '2019-11-01/generated/azure_mgmt_datashare/models/sql_dbtable_data_set.rb'
    autoload :BlobDataSetMapping,                                 '2019-11-01/generated/azure_mgmt_datashare/models/blob_data_set_mapping.rb'
    autoload :BlobFolderDataSetMapping,                           '2019-11-01/generated/azure_mgmt_datashare/models/blob_folder_data_set_mapping.rb'
    autoload :BlobContainerDataSetMapping,                        '2019-11-01/generated/azure_mgmt_datashare/models/blob_container_data_set_mapping.rb'
    autoload :ADLSGen2FileDataSetMapping,                         '2019-11-01/generated/azure_mgmt_datashare/models/adlsgen2file_data_set_mapping.rb'
    autoload :ADLSGen2FolderDataSetMapping,                       '2019-11-01/generated/azure_mgmt_datashare/models/adlsgen2folder_data_set_mapping.rb'
    autoload :ADLSGen2FileSystemDataSetMapping,                   '2019-11-01/generated/azure_mgmt_datashare/models/adlsgen2file_system_data_set_mapping.rb'
    autoload :KustoClusterDataSetMapping,                         '2019-11-01/generated/azure_mgmt_datashare/models/kusto_cluster_data_set_mapping.rb'
    autoload :KustoDatabaseDataSetMapping,                        '2019-11-01/generated/azure_mgmt_datashare/models/kusto_database_data_set_mapping.rb'
    autoload :SqlDWTableDataSetMapping,                           '2019-11-01/generated/azure_mgmt_datashare/models/sql_dwtable_data_set_mapping.rb'
    autoload :SqlDBTableDataSetMapping,                           '2019-11-01/generated/azure_mgmt_datashare/models/sql_dbtable_data_set_mapping.rb'
    autoload :ScheduledSourceSynchronizationSetting,              '2019-11-01/generated/azure_mgmt_datashare/models/scheduled_source_synchronization_setting.rb'
    autoload :Type,                                               '2019-11-01/generated/azure_mgmt_datashare/models/type.rb'
    autoload :ProvisioningState,                                  '2019-11-01/generated/azure_mgmt_datashare/models/provisioning_state.rb'
    autoload :Status,                                             '2019-11-01/generated/azure_mgmt_datashare/models/status.rb'
    autoload :InvitationStatus,                                   '2019-11-01/generated/azure_mgmt_datashare/models/invitation_status.rb'
    autoload :ShareKind,                                          '2019-11-01/generated/azure_mgmt_datashare/models/share_kind.rb'
    autoload :SynchronizationMode,                                '2019-11-01/generated/azure_mgmt_datashare/models/synchronization_mode.rb'
    autoload :DataSetType,                                        '2019-11-01/generated/azure_mgmt_datashare/models/data_set_type.rb'
    autoload :ShareSubscriptionStatus,                            '2019-11-01/generated/azure_mgmt_datashare/models/share_subscription_status.rb'
    autoload :RecurrenceInterval,                                 '2019-11-01/generated/azure_mgmt_datashare/models/recurrence_interval.rb'
    autoload :TriggerStatus,                                      '2019-11-01/generated/azure_mgmt_datashare/models/trigger_status.rb'
    autoload :DataSetMappingStatus,                               '2019-11-01/generated/azure_mgmt_datashare/models/data_set_mapping_status.rb'
    autoload :OutputType,                                         '2019-11-01/generated/azure_mgmt_datashare/models/output_type.rb'
  end
end
