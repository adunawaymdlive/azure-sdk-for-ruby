# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_kusto'

module Azure::Profiles::Latest
  module Kusto
    module Mgmt
      Clusters = Azure::Kusto::Mgmt::V2020_09_18::Clusters
      ClusterPrincipalAssignments = Azure::Kusto::Mgmt::V2020_09_18::ClusterPrincipalAssignments
      Databases = Azure::Kusto::Mgmt::V2020_09_18::Databases
      DatabasePrincipalAssignments = Azure::Kusto::Mgmt::V2020_09_18::DatabasePrincipalAssignments
      AttachedDatabaseConfigurations = Azure::Kusto::Mgmt::V2020_09_18::AttachedDatabaseConfigurations
      DataConnections = Azure::Kusto::Mgmt::V2020_09_18::DataConnections
      Operations = Azure::Kusto::Mgmt::V2020_09_18::Operations

      module Models
        ClusterPrincipalAssignmentListResult = Azure::Kusto::Mgmt::V2020_09_18::Models::ClusterPrincipalAssignmentListResult
        DatabasePrincipalListResult = Azure::Kusto::Mgmt::V2020_09_18::Models::DatabasePrincipalListResult
        OptimizedAutoscale = Azure::Kusto::Mgmt::V2020_09_18::Models::OptimizedAutoscale
        FollowerDatabaseDefinition = Azure::Kusto::Mgmt::V2020_09_18::Models::FollowerDatabaseDefinition
        KeyVaultProperties = Azure::Kusto::Mgmt::V2020_09_18::Models::KeyVaultProperties
        FollowerDatabaseListResult = Azure::Kusto::Mgmt::V2020_09_18::Models::FollowerDatabaseListResult
        LanguageExtensionsList = Azure::Kusto::Mgmt::V2020_09_18::Models::LanguageExtensionsList
        VirtualNetworkConfiguration = Azure::Kusto::Mgmt::V2020_09_18::Models::VirtualNetworkConfiguration
        AzureCapacity = Azure::Kusto::Mgmt::V2020_09_18::Models::AzureCapacity
        LanguageExtension = Azure::Kusto::Mgmt::V2020_09_18::Models::LanguageExtension
        SkuLocationInfoItem = Azure::Kusto::Mgmt::V2020_09_18::Models::SkuLocationInfoItem
        AzureSku = Azure::Kusto::Mgmt::V2020_09_18::Models::AzureSku
        SkuDescriptionList = Azure::Kusto::Mgmt::V2020_09_18::Models::SkuDescriptionList
        AzureResourceSku = Azure::Kusto::Mgmt::V2020_09_18::Models::AzureResourceSku
        SkuDescription = Azure::Kusto::Mgmt::V2020_09_18::Models::SkuDescription
        Identity = Azure::Kusto::Mgmt::V2020_09_18::Models::Identity
        DatabaseStatistics = Azure::Kusto::Mgmt::V2020_09_18::Models::DatabaseStatistics
        IdentityUserAssignedIdentitiesValue = Azure::Kusto::Mgmt::V2020_09_18::Models::IdentityUserAssignedIdentitiesValue
        AttachedDatabaseConfigurationListResult = Azure::Kusto::Mgmt::V2020_09_18::Models::AttachedDatabaseConfigurationListResult
        ClusterCheckNameRequest = Azure::Kusto::Mgmt::V2020_09_18::Models::ClusterCheckNameRequest
        ClusterPrincipalAssignmentCheckNameRequest = Azure::Kusto::Mgmt::V2020_09_18::Models::ClusterPrincipalAssignmentCheckNameRequest
        DataConnectionCheckNameRequest = Azure::Kusto::Mgmt::V2020_09_18::Models::DataConnectionCheckNameRequest
        DatabasePrincipal = Azure::Kusto::Mgmt::V2020_09_18::Models::DatabasePrincipal
        DataConnectionValidationResult = Azure::Kusto::Mgmt::V2020_09_18::Models::DataConnectionValidationResult
        DatabasePrincipalAssignmentCheckNameRequest = Azure::Kusto::Mgmt::V2020_09_18::Models::DatabasePrincipalAssignmentCheckNameRequest
        DatabasePrincipalListRequest = Azure::Kusto::Mgmt::V2020_09_18::Models::DatabasePrincipalListRequest
        DatabaseListResult = Azure::Kusto::Mgmt::V2020_09_18::Models::DatabaseListResult
        DiagnoseVirtualNetworkResult = Azure::Kusto::Mgmt::V2020_09_18::Models::DiagnoseVirtualNetworkResult
        TrustedExternalTenant = Azure::Kusto::Mgmt::V2020_09_18::Models::TrustedExternalTenant
        DataConnectionValidation = Azure::Kusto::Mgmt::V2020_09_18::Models::DataConnectionValidation
        ListResourceSkusResult = Azure::Kusto::Mgmt::V2020_09_18::Models::ListResourceSkusResult
        Resource = Azure::Kusto::Mgmt::V2020_09_18::Models::Resource
        CheckNameResult = Azure::Kusto::Mgmt::V2020_09_18::Models::CheckNameResult
        OperationListResult = Azure::Kusto::Mgmt::V2020_09_18::Models::OperationListResult
        DatabasePrincipalAssignmentListResult = Azure::Kusto::Mgmt::V2020_09_18::Models::DatabasePrincipalAssignmentListResult
        Operation = Azure::Kusto::Mgmt::V2020_09_18::Models::Operation
        CheckNameRequest = Azure::Kusto::Mgmt::V2020_09_18::Models::CheckNameRequest
        DataConnectionValidationListResult = Azure::Kusto::Mgmt::V2020_09_18::Models::DataConnectionValidationListResult
        OperationDisplay = Azure::Kusto::Mgmt::V2020_09_18::Models::OperationDisplay
        DataConnectionListResult = Azure::Kusto::Mgmt::V2020_09_18::Models::DataConnectionListResult
        ClusterListResult = Azure::Kusto::Mgmt::V2020_09_18::Models::ClusterListResult
        Cluster = Azure::Kusto::Mgmt::V2020_09_18::Models::Cluster
        ClusterUpdate = Azure::Kusto::Mgmt::V2020_09_18::Models::ClusterUpdate
        ReadWriteDatabase = Azure::Kusto::Mgmt::V2020_09_18::Models::ReadWriteDatabase
        ReadOnlyFollowingDatabase = Azure::Kusto::Mgmt::V2020_09_18::Models::ReadOnlyFollowingDatabase
        ProxyResource = Azure::Kusto::Mgmt::V2020_09_18::Models::ProxyResource
        AttachedDatabaseConfiguration = Azure::Kusto::Mgmt::V2020_09_18::Models::AttachedDatabaseConfiguration
        Database = Azure::Kusto::Mgmt::V2020_09_18::Models::Database
        DatabasePrincipalAssignment = Azure::Kusto::Mgmt::V2020_09_18::Models::DatabasePrincipalAssignment
        ClusterPrincipalAssignment = Azure::Kusto::Mgmt::V2020_09_18::Models::ClusterPrincipalAssignment
        DataConnection = Azure::Kusto::Mgmt::V2020_09_18::Models::DataConnection
        EventHubDataConnection = Azure::Kusto::Mgmt::V2020_09_18::Models::EventHubDataConnection
        IotHubDataConnection = Azure::Kusto::Mgmt::V2020_09_18::Models::IotHubDataConnection
        EventGridDataConnection = Azure::Kusto::Mgmt::V2020_09_18::Models::EventGridDataConnection
        TrackedResource = Azure::Kusto::Mgmt::V2020_09_18::Models::TrackedResource
        AzureEntityResource = Azure::Kusto::Mgmt::V2020_09_18::Models::AzureEntityResource
        State = Azure::Kusto::Mgmt::V2020_09_18::Models::State
        ProvisioningState = Azure::Kusto::Mgmt::V2020_09_18::Models::ProvisioningState
        LanguageExtensionName = Azure::Kusto::Mgmt::V2020_09_18::Models::LanguageExtensionName
        EngineType = Azure::Kusto::Mgmt::V2020_09_18::Models::EngineType
        AzureSkuName = Azure::Kusto::Mgmt::V2020_09_18::Models::AzureSkuName
        AzureSkuTier = Azure::Kusto::Mgmt::V2020_09_18::Models::AzureSkuTier
        AzureScaleType = Azure::Kusto::Mgmt::V2020_09_18::Models::AzureScaleType
        DefaultPrincipalsModificationKind = Azure::Kusto::Mgmt::V2020_09_18::Models::DefaultPrincipalsModificationKind
        PrincipalsModificationKind = Azure::Kusto::Mgmt::V2020_09_18::Models::PrincipalsModificationKind
        EventHubDataFormat = Azure::Kusto::Mgmt::V2020_09_18::Models::EventHubDataFormat
        Compression = Azure::Kusto::Mgmt::V2020_09_18::Models::Compression
        IotHubDataFormat = Azure::Kusto::Mgmt::V2020_09_18::Models::IotHubDataFormat
        EventGridDataFormat = Azure::Kusto::Mgmt::V2020_09_18::Models::EventGridDataFormat
        BlobStorageEventType = Azure::Kusto::Mgmt::V2020_09_18::Models::BlobStorageEventType
        IdentityType = Azure::Kusto::Mgmt::V2020_09_18::Models::IdentityType
        DatabasePrincipalRole = Azure::Kusto::Mgmt::V2020_09_18::Models::DatabasePrincipalRole
        DatabasePrincipalType = Azure::Kusto::Mgmt::V2020_09_18::Models::DatabasePrincipalType
        PrincipalType = Azure::Kusto::Mgmt::V2020_09_18::Models::PrincipalType
        ClusterPrincipalRole = Azure::Kusto::Mgmt::V2020_09_18::Models::ClusterPrincipalRole
        Type = Azure::Kusto::Mgmt::V2020_09_18::Models::Type
        Reason = Azure::Kusto::Mgmt::V2020_09_18::Models::Reason
      end

      class KustoManagementClass
        attr_reader :clusters, :cluster_principal_assignments, :databases, :database_principal_assignments, :attached_database_configurations, :data_connections, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Kusto::Mgmt::V2020_09_18::KustoManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @clusters = @client_0.clusters
          @cluster_principal_assignments = @client_0.cluster_principal_assignments
          @databases = @client_0.databases
          @database_principal_assignments = @client_0.database_principal_assignments
          @attached_database_configurations = @client_0.attached_database_configurations
          @data_connections = @client_0.data_connections
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Kusto/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def cluster_principal_assignment_list_result
            Azure::Kusto::Mgmt::V2020_09_18::Models::ClusterPrincipalAssignmentListResult
          end
          def database_principal_list_result
            Azure::Kusto::Mgmt::V2020_09_18::Models::DatabasePrincipalListResult
          end
          def optimized_autoscale
            Azure::Kusto::Mgmt::V2020_09_18::Models::OptimizedAutoscale
          end
          def follower_database_definition
            Azure::Kusto::Mgmt::V2020_09_18::Models::FollowerDatabaseDefinition
          end
          def key_vault_properties
            Azure::Kusto::Mgmt::V2020_09_18::Models::KeyVaultProperties
          end
          def follower_database_list_result
            Azure::Kusto::Mgmt::V2020_09_18::Models::FollowerDatabaseListResult
          end
          def language_extensions_list
            Azure::Kusto::Mgmt::V2020_09_18::Models::LanguageExtensionsList
          end
          def virtual_network_configuration
            Azure::Kusto::Mgmt::V2020_09_18::Models::VirtualNetworkConfiguration
          end
          def azure_capacity
            Azure::Kusto::Mgmt::V2020_09_18::Models::AzureCapacity
          end
          def language_extension
            Azure::Kusto::Mgmt::V2020_09_18::Models::LanguageExtension
          end
          def sku_location_info_item
            Azure::Kusto::Mgmt::V2020_09_18::Models::SkuLocationInfoItem
          end
          def azure_sku
            Azure::Kusto::Mgmt::V2020_09_18::Models::AzureSku
          end
          def sku_description_list
            Azure::Kusto::Mgmt::V2020_09_18::Models::SkuDescriptionList
          end
          def azure_resource_sku
            Azure::Kusto::Mgmt::V2020_09_18::Models::AzureResourceSku
          end
          def sku_description
            Azure::Kusto::Mgmt::V2020_09_18::Models::SkuDescription
          end
          def identity
            Azure::Kusto::Mgmt::V2020_09_18::Models::Identity
          end
          def database_statistics
            Azure::Kusto::Mgmt::V2020_09_18::Models::DatabaseStatistics
          end
          def identity_user_assigned_identities_value
            Azure::Kusto::Mgmt::V2020_09_18::Models::IdentityUserAssignedIdentitiesValue
          end
          def attached_database_configuration_list_result
            Azure::Kusto::Mgmt::V2020_09_18::Models::AttachedDatabaseConfigurationListResult
          end
          def cluster_check_name_request
            Azure::Kusto::Mgmt::V2020_09_18::Models::ClusterCheckNameRequest
          end
          def cluster_principal_assignment_check_name_request
            Azure::Kusto::Mgmt::V2020_09_18::Models::ClusterPrincipalAssignmentCheckNameRequest
          end
          def data_connection_check_name_request
            Azure::Kusto::Mgmt::V2020_09_18::Models::DataConnectionCheckNameRequest
          end
          def database_principal
            Azure::Kusto::Mgmt::V2020_09_18::Models::DatabasePrincipal
          end
          def data_connection_validation_result
            Azure::Kusto::Mgmt::V2020_09_18::Models::DataConnectionValidationResult
          end
          def database_principal_assignment_check_name_request
            Azure::Kusto::Mgmt::V2020_09_18::Models::DatabasePrincipalAssignmentCheckNameRequest
          end
          def database_principal_list_request
            Azure::Kusto::Mgmt::V2020_09_18::Models::DatabasePrincipalListRequest
          end
          def database_list_result
            Azure::Kusto::Mgmt::V2020_09_18::Models::DatabaseListResult
          end
          def diagnose_virtual_network_result
            Azure::Kusto::Mgmt::V2020_09_18::Models::DiagnoseVirtualNetworkResult
          end
          def trusted_external_tenant
            Azure::Kusto::Mgmt::V2020_09_18::Models::TrustedExternalTenant
          end
          def data_connection_validation
            Azure::Kusto::Mgmt::V2020_09_18::Models::DataConnectionValidation
          end
          def list_resource_skus_result
            Azure::Kusto::Mgmt::V2020_09_18::Models::ListResourceSkusResult
          end
          def resource
            Azure::Kusto::Mgmt::V2020_09_18::Models::Resource
          end
          def check_name_result
            Azure::Kusto::Mgmt::V2020_09_18::Models::CheckNameResult
          end
          def operation_list_result
            Azure::Kusto::Mgmt::V2020_09_18::Models::OperationListResult
          end
          def database_principal_assignment_list_result
            Azure::Kusto::Mgmt::V2020_09_18::Models::DatabasePrincipalAssignmentListResult
          end
          def operation
            Azure::Kusto::Mgmt::V2020_09_18::Models::Operation
          end
          def check_name_request
            Azure::Kusto::Mgmt::V2020_09_18::Models::CheckNameRequest
          end
          def data_connection_validation_list_result
            Azure::Kusto::Mgmt::V2020_09_18::Models::DataConnectionValidationListResult
          end
          def operation_display
            Azure::Kusto::Mgmt::V2020_09_18::Models::OperationDisplay
          end
          def data_connection_list_result
            Azure::Kusto::Mgmt::V2020_09_18::Models::DataConnectionListResult
          end
          def cluster_list_result
            Azure::Kusto::Mgmt::V2020_09_18::Models::ClusterListResult
          end
          def cluster
            Azure::Kusto::Mgmt::V2020_09_18::Models::Cluster
          end
          def cluster_update
            Azure::Kusto::Mgmt::V2020_09_18::Models::ClusterUpdate
          end
          def read_write_database
            Azure::Kusto::Mgmt::V2020_09_18::Models::ReadWriteDatabase
          end
          def read_only_following_database
            Azure::Kusto::Mgmt::V2020_09_18::Models::ReadOnlyFollowingDatabase
          end
          def proxy_resource
            Azure::Kusto::Mgmt::V2020_09_18::Models::ProxyResource
          end
          def attached_database_configuration
            Azure::Kusto::Mgmt::V2020_09_18::Models::AttachedDatabaseConfiguration
          end
          def database
            Azure::Kusto::Mgmt::V2020_09_18::Models::Database
          end
          def database_principal_assignment
            Azure::Kusto::Mgmt::V2020_09_18::Models::DatabasePrincipalAssignment
          end
          def cluster_principal_assignment
            Azure::Kusto::Mgmt::V2020_09_18::Models::ClusterPrincipalAssignment
          end
          def data_connection
            Azure::Kusto::Mgmt::V2020_09_18::Models::DataConnection
          end
          def event_hub_data_connection
            Azure::Kusto::Mgmt::V2020_09_18::Models::EventHubDataConnection
          end
          def iot_hub_data_connection
            Azure::Kusto::Mgmt::V2020_09_18::Models::IotHubDataConnection
          end
          def event_grid_data_connection
            Azure::Kusto::Mgmt::V2020_09_18::Models::EventGridDataConnection
          end
          def tracked_resource
            Azure::Kusto::Mgmt::V2020_09_18::Models::TrackedResource
          end
          def azure_entity_resource
            Azure::Kusto::Mgmt::V2020_09_18::Models::AzureEntityResource
          end
          def state
            Azure::Kusto::Mgmt::V2020_09_18::Models::State
          end
          def provisioning_state
            Azure::Kusto::Mgmt::V2020_09_18::Models::ProvisioningState
          end
          def language_extension_name
            Azure::Kusto::Mgmt::V2020_09_18::Models::LanguageExtensionName
          end
          def engine_type
            Azure::Kusto::Mgmt::V2020_09_18::Models::EngineType
          end
          def azure_sku_name
            Azure::Kusto::Mgmt::V2020_09_18::Models::AzureSkuName
          end
          def azure_sku_tier
            Azure::Kusto::Mgmt::V2020_09_18::Models::AzureSkuTier
          end
          def azure_scale_type
            Azure::Kusto::Mgmt::V2020_09_18::Models::AzureScaleType
          end
          def default_principals_modification_kind
            Azure::Kusto::Mgmt::V2020_09_18::Models::DefaultPrincipalsModificationKind
          end
          def principals_modification_kind
            Azure::Kusto::Mgmt::V2020_09_18::Models::PrincipalsModificationKind
          end
          def event_hub_data_format
            Azure::Kusto::Mgmt::V2020_09_18::Models::EventHubDataFormat
          end
          def compression
            Azure::Kusto::Mgmt::V2020_09_18::Models::Compression
          end
          def iot_hub_data_format
            Azure::Kusto::Mgmt::V2020_09_18::Models::IotHubDataFormat
          end
          def event_grid_data_format
            Azure::Kusto::Mgmt::V2020_09_18::Models::EventGridDataFormat
          end
          def blob_storage_event_type
            Azure::Kusto::Mgmt::V2020_09_18::Models::BlobStorageEventType
          end
          def identity_type
            Azure::Kusto::Mgmt::V2020_09_18::Models::IdentityType
          end
          def database_principal_role
            Azure::Kusto::Mgmt::V2020_09_18::Models::DatabasePrincipalRole
          end
          def database_principal_type
            Azure::Kusto::Mgmt::V2020_09_18::Models::DatabasePrincipalType
          end
          def principal_type
            Azure::Kusto::Mgmt::V2020_09_18::Models::PrincipalType
          end
          def cluster_principal_role
            Azure::Kusto::Mgmt::V2020_09_18::Models::ClusterPrincipalRole
          end
          def type
            Azure::Kusto::Mgmt::V2020_09_18::Models::Type
          end
          def reason
            Azure::Kusto::Mgmt::V2020_09_18::Models::Reason
          end
        end
      end
    end
  end
end
