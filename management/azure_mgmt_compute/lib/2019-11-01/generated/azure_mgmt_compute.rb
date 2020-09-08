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
require '2019-11-01/generated/azure_mgmt_compute/module_definition'
require 'ms_rest_azure'

module Azure::Compute::Mgmt::V2019_11_01
  autoload :Disks,                                              '2019-11-01/generated/azure_mgmt_compute/disks.rb'
  autoload :Snapshots,                                          '2019-11-01/generated/azure_mgmt_compute/snapshots.rb'
  autoload :DiskEncryptionSets,                                 '2019-11-01/generated/azure_mgmt_compute/disk_encryption_sets.rb'
  autoload :ComputeManagementClient,                            '2019-11-01/generated/azure_mgmt_compute/compute_management_client.rb'

  module Models
    autoload :DiskList,                                           '2019-11-01/generated/azure_mgmt_compute/models/disk_list.rb'
    autoload :SnapshotSku,                                        '2019-11-01/generated/azure_mgmt_compute/models/snapshot_sku.rb'
    autoload :DiskSku,                                            '2019-11-01/generated/azure_mgmt_compute/models/disk_sku.rb'
    autoload :GrantAccessData,                                    '2019-11-01/generated/azure_mgmt_compute/models/grant_access_data.rb'
    autoload :CreationData,                                       '2019-11-01/generated/azure_mgmt_compute/models/creation_data.rb'
    autoload :AccessUri,                                          '2019-11-01/generated/azure_mgmt_compute/models/access_uri.rb'
    autoload :KeyVaultAndSecretReference,                         '2019-11-01/generated/azure_mgmt_compute/models/key_vault_and_secret_reference.rb'
    autoload :KeyVaultAndKeyReference,                            '2019-11-01/generated/azure_mgmt_compute/models/key_vault_and_key_reference.rb'
    autoload :EncryptionSettingsElement,                          '2019-11-01/generated/azure_mgmt_compute/models/encryption_settings_element.rb'
    autoload :Encryption,                                         '2019-11-01/generated/azure_mgmt_compute/models/encryption.rb'
    autoload :SnapshotUpdate,                                     '2019-11-01/generated/azure_mgmt_compute/models/snapshot_update.rb'
    autoload :InnerError,                                         '2019-11-01/generated/azure_mgmt_compute/models/inner_error.rb'
    autoload :DiskUpdate,                                         '2019-11-01/generated/azure_mgmt_compute/models/disk_update.rb'
    autoload :SnapshotList,                                       '2019-11-01/generated/azure_mgmt_compute/models/snapshot_list.rb'
    autoload :ImageDiskReference,                                 '2019-11-01/generated/azure_mgmt_compute/models/image_disk_reference.rb'
    autoload :EncryptionSetIdentity,                              '2019-11-01/generated/azure_mgmt_compute/models/encryption_set_identity.rb'
    autoload :EncryptionSettingsCollection,                       '2019-11-01/generated/azure_mgmt_compute/models/encryption_settings_collection.rb'
    autoload :ApiError,                                           '2019-11-01/generated/azure_mgmt_compute/models/api_error.rb'
    autoload :Resource,                                           '2019-11-01/generated/azure_mgmt_compute/models/resource.rb'
    autoload :DiskEncryptionSetUpdate,                            '2019-11-01/generated/azure_mgmt_compute/models/disk_encryption_set_update.rb'
    autoload :ShareInfoElement,                                   '2019-11-01/generated/azure_mgmt_compute/models/share_info_element.rb'
    autoload :DiskEncryptionSetList,                              '2019-11-01/generated/azure_mgmt_compute/models/disk_encryption_set_list.rb'
    autoload :SourceVault,                                        '2019-11-01/generated/azure_mgmt_compute/models/source_vault.rb'
    autoload :ApiErrorBase,                                       '2019-11-01/generated/azure_mgmt_compute/models/api_error_base.rb'
    autoload :Disk,                                               '2019-11-01/generated/azure_mgmt_compute/models/disk.rb'
    autoload :Snapshot,                                           '2019-11-01/generated/azure_mgmt_compute/models/snapshot.rb'
    autoload :DiskEncryptionSet,                                  '2019-11-01/generated/azure_mgmt_compute/models/disk_encryption_set.rb'
    autoload :DiskStorageAccountTypes,                            '2019-11-01/generated/azure_mgmt_compute/models/disk_storage_account_types.rb'
    autoload :OperatingSystemTypes,                               '2019-11-01/generated/azure_mgmt_compute/models/operating_system_types.rb'
    autoload :HyperVGeneration,                                   '2019-11-01/generated/azure_mgmt_compute/models/hyper_vgeneration.rb'
    autoload :DiskCreateOption,                                   '2019-11-01/generated/azure_mgmt_compute/models/disk_create_option.rb'
    autoload :DiskState,                                          '2019-11-01/generated/azure_mgmt_compute/models/disk_state.rb'
    autoload :EncryptionType,                                     '2019-11-01/generated/azure_mgmt_compute/models/encryption_type.rb'
    autoload :SnapshotStorageAccountTypes,                        '2019-11-01/generated/azure_mgmt_compute/models/snapshot_storage_account_types.rb'
    autoload :AccessLevel,                                        '2019-11-01/generated/azure_mgmt_compute/models/access_level.rb'
    autoload :DiskEncryptionSetIdentityType,                      '2019-11-01/generated/azure_mgmt_compute/models/disk_encryption_set_identity_type.rb'
  end
end