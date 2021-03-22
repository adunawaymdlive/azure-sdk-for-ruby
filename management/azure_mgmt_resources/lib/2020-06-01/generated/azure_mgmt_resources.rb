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
require '2020-06-01/generated/azure_mgmt_resources/module_definition'
require 'ms_rest_azure'

module Azure::Resources::Mgmt::V2020_06_01
  autoload :Operations,                                         '2020-06-01/generated/azure_mgmt_resources/operations.rb'
  autoload :Deployments,                                        '2020-06-01/generated/azure_mgmt_resources/deployments.rb'
  autoload :Providers,                                          '2020-06-01/generated/azure_mgmt_resources/providers.rb'
  autoload :Resources,                                          '2020-06-01/generated/azure_mgmt_resources/resources.rb'
  autoload :ResourceGroups,                                     '2020-06-01/generated/azure_mgmt_resources/resource_groups.rb'
  autoload :TagsOperations,                                     '2020-06-01/generated/azure_mgmt_resources/tags_operations.rb'
  autoload :DeploymentOperations,                               '2020-06-01/generated/azure_mgmt_resources/deployment_operations.rb'
  autoload :ResourceManagementClient,                           '2020-06-01/generated/azure_mgmt_resources/resource_management_client.rb'

  module Models
    autoload :Plan,                                               '2020-06-01/generated/azure_mgmt_resources/models/plan.rb'
    autoload :Sku,                                                '2020-06-01/generated/azure_mgmt_resources/models/sku.rb'
    autoload :GenericResourceFilter,                              '2020-06-01/generated/azure_mgmt_resources/models/generic_resource_filter.rb'
    autoload :IdentityUserAssignedIdentitiesValue,                '2020-06-01/generated/azure_mgmt_resources/models/identity_user_assigned_identities_value.rb'
    autoload :TemplateLink,                                       '2020-06-01/generated/azure_mgmt_resources/models/template_link.rb'
    autoload :Identity,                                           '2020-06-01/generated/azure_mgmt_resources/models/identity.rb'
    autoload :DebugSetting,                                       '2020-06-01/generated/azure_mgmt_resources/models/debug_setting.rb'
    autoload :OnErrorDeployment,                                  '2020-06-01/generated/azure_mgmt_resources/models/on_error_deployment.rb'
    autoload :ExpressionEvaluationOptions,                        '2020-06-01/generated/azure_mgmt_resources/models/expression_evaluation_options.rb'
    autoload :TagsResource,                                       '2020-06-01/generated/azure_mgmt_resources/models/tags_resource.rb'
    autoload :Deployment,                                         '2020-06-01/generated/azure_mgmt_resources/models/deployment.rb'
    autoload :TagsPatchResource,                                  '2020-06-01/generated/azure_mgmt_resources/models/tags_patch_resource.rb'
    autoload :DeploymentExportResult,                             '2020-06-01/generated/azure_mgmt_resources/models/deployment_export_result.rb'
    autoload :ResourceListResult,                                 '2020-06-01/generated/azure_mgmt_resources/models/resource_list_result.rb'
    autoload :Tags,                                               '2020-06-01/generated/azure_mgmt_resources/models/tags.rb'
    autoload :DeploymentWhatIf,                                   '2020-06-01/generated/azure_mgmt_resources/models/deployment_what_if.rb'
    autoload :ResourceGroupProperties,                            '2020-06-01/generated/azure_mgmt_resources/models/resource_group_properties.rb'
    autoload :ErrorAdditionalInfo,                                '2020-06-01/generated/azure_mgmt_resources/models/error_additional_info.rb'
    autoload :ResourceGroup,                                      '2020-06-01/generated/azure_mgmt_resources/models/resource_group.rb'
    autoload :ResourceGroupPatchable,                             '2020-06-01/generated/azure_mgmt_resources/models/resource_group_patchable.rb'
    autoload :AliasPathMetadata,                                  '2020-06-01/generated/azure_mgmt_resources/models/alias_path_metadata.rb'
    autoload :ResourceGroupListResult,                            '2020-06-01/generated/azure_mgmt_resources/models/resource_group_list_result.rb'
    autoload :AliasPath,                                          '2020-06-01/generated/azure_mgmt_resources/models/alias_path.rb'
    autoload :ResourcesMoveInfo,                                  '2020-06-01/generated/azure_mgmt_resources/models/resources_move_info.rb'
    autoload :ProviderResourceType,                               '2020-06-01/generated/azure_mgmt_resources/models/provider_resource_type.rb'
    autoload :ExportTemplateRequest,                              '2020-06-01/generated/azure_mgmt_resources/models/export_template_request.rb'
    autoload :BasicDependency,                                    '2020-06-01/generated/azure_mgmt_resources/models/basic_dependency.rb'
    autoload :TagCount,                                           '2020-06-01/generated/azure_mgmt_resources/models/tag_count.rb'
    autoload :OnErrorDeploymentExtended,                          '2020-06-01/generated/azure_mgmt_resources/models/on_error_deployment_extended.rb'
    autoload :TagValue,                                           '2020-06-01/generated/azure_mgmt_resources/models/tag_value.rb'
    autoload :DeploymentPropertiesExtended,                       '2020-06-01/generated/azure_mgmt_resources/models/deployment_properties_extended.rb'
    autoload :TagDetails,                                         '2020-06-01/generated/azure_mgmt_resources/models/tag_details.rb'
    autoload :DeploymentExtended,                                 '2020-06-01/generated/azure_mgmt_resources/models/deployment_extended.rb'
    autoload :TagsListResult,                                     '2020-06-01/generated/azure_mgmt_resources/models/tags_list_result.rb'
    autoload :ProviderListResult,                                 '2020-06-01/generated/azure_mgmt_resources/models/provider_list_result.rb'
    autoload :TargetResource,                                     '2020-06-01/generated/azure_mgmt_resources/models/target_resource.rb'
    autoload :ResourceGroupFilter,                                '2020-06-01/generated/azure_mgmt_resources/models/resource_group_filter.rb'
    autoload :HttpMessage,                                        '2020-06-01/generated/azure_mgmt_resources/models/http_message.rb'
    autoload :DeploymentProperties,                               '2020-06-01/generated/azure_mgmt_resources/models/deployment_properties.rb'
    autoload :StatusMessage,                                      '2020-06-01/generated/azure_mgmt_resources/models/status_message.rb'
    autoload :DeploymentWhatIfSettings,                           '2020-06-01/generated/azure_mgmt_resources/models/deployment_what_if_settings.rb'
    autoload :DeploymentOperationProperties,                      '2020-06-01/generated/azure_mgmt_resources/models/deployment_operation_properties.rb'
    autoload :ErrorResponse,                                      '2020-06-01/generated/azure_mgmt_resources/models/error_response.rb'
    autoload :DeploymentOperation,                                '2020-06-01/generated/azure_mgmt_resources/models/deployment_operation.rb'
    autoload :AliasPattern,                                       '2020-06-01/generated/azure_mgmt_resources/models/alias_pattern.rb'
    autoload :DeploymentOperationsListResult,                     '2020-06-01/generated/azure_mgmt_resources/models/deployment_operations_list_result.rb'
    autoload :Provider,                                           '2020-06-01/generated/azure_mgmt_resources/models/provider.rb'
    autoload :ResourceProviderOperationDisplayProperties,         '2020-06-01/generated/azure_mgmt_resources/models/resource_provider_operation_display_properties.rb'
    autoload :ResourceReference,                                  '2020-06-01/generated/azure_mgmt_resources/models/resource_reference.rb'
    autoload :Resource,                                           '2020-06-01/generated/azure_mgmt_resources/models/resource.rb'
    autoload :DeploymentListResult,                               '2020-06-01/generated/azure_mgmt_resources/models/deployment_list_result.rb'
    autoload :SubResource,                                        '2020-06-01/generated/azure_mgmt_resources/models/sub_resource.rb'
    autoload :ParametersLink,                                     '2020-06-01/generated/azure_mgmt_resources/models/parameters_link.rb'
    autoload :ResourceGroupExportResult,                          '2020-06-01/generated/azure_mgmt_resources/models/resource_group_export_result.rb'
    autoload :ScopedDeploymentWhatIf,                             '2020-06-01/generated/azure_mgmt_resources/models/scoped_deployment_what_if.rb'
    autoload :OperationDisplay,                                   '2020-06-01/generated/azure_mgmt_resources/models/operation_display.rb'
    autoload :AliasModel,                                         '2020-06-01/generated/azure_mgmt_resources/models/alias_model.rb'
    autoload :Operation,                                          '2020-06-01/generated/azure_mgmt_resources/models/operation.rb'
    autoload :DeploymentValidateResult,                           '2020-06-01/generated/azure_mgmt_resources/models/deployment_validate_result.rb'
    autoload :OperationListResult,                                '2020-06-01/generated/azure_mgmt_resources/models/operation_list_result.rb'
    autoload :ScopedDeployment,                                   '2020-06-01/generated/azure_mgmt_resources/models/scoped_deployment.rb'
    autoload :TemplateHashResult,                                 '2020-06-01/generated/azure_mgmt_resources/models/template_hash_result.rb'
    autoload :Dependency,                                         '2020-06-01/generated/azure_mgmt_resources/models/dependency.rb'
    autoload :WhatIfPropertyChange,                               '2020-06-01/generated/azure_mgmt_resources/models/what_if_property_change.rb'
    autoload :ApiProfile,                                         '2020-06-01/generated/azure_mgmt_resources/models/api_profile.rb'
    autoload :WhatIfChange,                                       '2020-06-01/generated/azure_mgmt_resources/models/what_if_change.rb'
    autoload :DeploymentExtendedFilter,                           '2020-06-01/generated/azure_mgmt_resources/models/deployment_extended_filter.rb'
    autoload :WhatIfOperationResult,                              '2020-06-01/generated/azure_mgmt_resources/models/what_if_operation_result.rb'
    autoload :DeploymentWhatIfProperties,                         '2020-06-01/generated/azure_mgmt_resources/models/deployment_what_if_properties.rb'
    autoload :GenericResource,                                    '2020-06-01/generated/azure_mgmt_resources/models/generic_resource.rb'
    autoload :GenericResourceExpanded,                            '2020-06-01/generated/azure_mgmt_resources/models/generic_resource_expanded.rb'
    autoload :DeploymentMode,                                     '2020-06-01/generated/azure_mgmt_resources/models/deployment_mode.rb'
    autoload :OnErrorDeploymentType,                              '2020-06-01/generated/azure_mgmt_resources/models/on_error_deployment_type.rb'
    autoload :ExpressionEvaluationOptionsScopeType,               '2020-06-01/generated/azure_mgmt_resources/models/expression_evaluation_options_scope_type.rb'
    autoload :WhatIfResultFormat,                                 '2020-06-01/generated/azure_mgmt_resources/models/what_if_result_format.rb'
    autoload :AliasPathTokenType,                                 '2020-06-01/generated/azure_mgmt_resources/models/alias_path_token_type.rb'
    autoload :AliasPathAttributes,                                '2020-06-01/generated/azure_mgmt_resources/models/alias_path_attributes.rb'
    autoload :AliasPatternType,                                   '2020-06-01/generated/azure_mgmt_resources/models/alias_pattern_type.rb'
    autoload :AliasType,                                          '2020-06-01/generated/azure_mgmt_resources/models/alias_type.rb'
    autoload :ProvisioningState,                                  '2020-06-01/generated/azure_mgmt_resources/models/provisioning_state.rb'
    autoload :ResourceIdentityType,                               '2020-06-01/generated/azure_mgmt_resources/models/resource_identity_type.rb'
    autoload :ProvisioningOperation,                              '2020-06-01/generated/azure_mgmt_resources/models/provisioning_operation.rb'
    autoload :PropertyChangeType,                                 '2020-06-01/generated/azure_mgmt_resources/models/property_change_type.rb'
    autoload :ChangeType,                                         '2020-06-01/generated/azure_mgmt_resources/models/change_type.rb'
    autoload :TagsPatchOperation,                                 '2020-06-01/generated/azure_mgmt_resources/models/tags_patch_operation.rb'
  end
end
