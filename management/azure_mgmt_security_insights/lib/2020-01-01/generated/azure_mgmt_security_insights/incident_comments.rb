# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2020_01_01
  #
  # API spec for Microsoft.SecurityInsights (Azure Security Insights) resource
  # provider
  #
  class IncidentComments
    include MsRestAzure

    #
    # Creates and initializes a new instance of the IncidentComments class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SecurityInsights] reference to the SecurityInsights
    attr_reader :client

    #
    # Gets all incident comments.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param incident_id [String] Incident ID
    # @param filter [String] Filters the results, based on a Boolean condition.
    # Optional.
    # @param orderby [String] Sorts the results. Optional.
    # @param top [Integer] Returns only the first n results. Optional.
    # @param skip_token [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls. Optional.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<IncidentComment>] operation results.
    #
    def list_by_incident(resource_group_name, workspace_name, incident_id, filter:nil, orderby:nil, top:nil, skip_token:nil, custom_headers:nil)
      first_page = list_by_incident_as_lazy(resource_group_name, workspace_name, incident_id, filter:filter, orderby:orderby, top:top, skip_token:skip_token, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Gets all incident comments.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param incident_id [String] Incident ID
    # @param filter [String] Filters the results, based on a Boolean condition.
    # Optional.
    # @param orderby [String] Sorts the results. Optional.
    # @param top [Integer] Returns only the first n results. Optional.
    # @param skip_token [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls. Optional.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_incident_with_http_info(resource_group_name, workspace_name, incident_id, filter:nil, orderby:nil, top:nil, skip_token:nil, custom_headers:nil)
      list_by_incident_async(resource_group_name, workspace_name, incident_id, filter:filter, orderby:orderby, top:top, skip_token:skip_token, custom_headers:custom_headers).value!
    end

    #
    # Gets all incident comments.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param incident_id [String] Incident ID
    # @param filter [String] Filters the results, based on a Boolean condition.
    # Optional.
    # @param orderby [String] Sorts the results. Optional.
    # @param top [Integer] Returns only the first n results. Optional.
    # @param skip_token [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls. Optional.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_incident_async(resource_group_name, workspace_name, incident_id, filter:nil, orderby:nil, top:nil, skip_token:nil, custom_headers:nil)
      @client.api_version = '2020-01-01'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'Pattern': '^[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}$'" if !@client.subscription_id.nil? && @client.subscription_id.match(Regexp.new('^^[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}$$')).nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, "'workspace_name' should satisfy the constraint - 'MaxLength': '90'" if !workspace_name.nil? && workspace_name.length > 90
      fail ArgumentError, "'workspace_name' should satisfy the constraint - 'MinLength': '1'" if !workspace_name.nil? && workspace_name.length < 1
      fail ArgumentError, 'incident_id is nil' if incident_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/incidents/{incidentId}/comments'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'incidentId' => incident_id},
          query_params: {'api-version' => @client.api_version,'$filter' => filter,'$orderby' => orderby,'$top' => top,'$skipToken' => skip_token},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentCommentList.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets an incident comment.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param incident_id [String] Incident ID
    # @param incident_comment_id [String] Incident comment ID
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IncidentComment] operation results.
    #
    def get(resource_group_name, workspace_name, incident_id, incident_comment_id, custom_headers:nil)
      response = get_async(resource_group_name, workspace_name, incident_id, incident_comment_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets an incident comment.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param incident_id [String] Incident ID
    # @param incident_comment_id [String] Incident comment ID
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, workspace_name, incident_id, incident_comment_id, custom_headers:nil)
      get_async(resource_group_name, workspace_name, incident_id, incident_comment_id, custom_headers:custom_headers).value!
    end

    #
    # Gets an incident comment.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param incident_id [String] Incident ID
    # @param incident_comment_id [String] Incident comment ID
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, workspace_name, incident_id, incident_comment_id, custom_headers:nil)
      @client.api_version = '2020-01-01'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'Pattern': '^[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}$'" if !@client.subscription_id.nil? && @client.subscription_id.match(Regexp.new('^^[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}$$')).nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, "'workspace_name' should satisfy the constraint - 'MaxLength': '90'" if !workspace_name.nil? && workspace_name.length > 90
      fail ArgumentError, "'workspace_name' should satisfy the constraint - 'MinLength': '1'" if !workspace_name.nil? && workspace_name.length < 1
      fail ArgumentError, 'incident_id is nil' if incident_id.nil?
      fail ArgumentError, 'incident_comment_id is nil' if incident_comment_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/incidents/{incidentId}/comments/{incidentCommentId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'incidentId' => incident_id,'incidentCommentId' => incident_comment_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentComment.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Creates the incident comment.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param incident_id [String] Incident ID
    # @param incident_comment_id [String] Incident comment ID
    # @param incident_comment [IncidentComment] The incident comment
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IncidentComment] operation results.
    #
    def create_comment(resource_group_name, workspace_name, incident_id, incident_comment_id, incident_comment, custom_headers:nil)
      response = create_comment_async(resource_group_name, workspace_name, incident_id, incident_comment_id, incident_comment, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates the incident comment.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param incident_id [String] Incident ID
    # @param incident_comment_id [String] Incident comment ID
    # @param incident_comment [IncidentComment] The incident comment
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_comment_with_http_info(resource_group_name, workspace_name, incident_id, incident_comment_id, incident_comment, custom_headers:nil)
      create_comment_async(resource_group_name, workspace_name, incident_id, incident_comment_id, incident_comment, custom_headers:custom_headers).value!
    end

    #
    # Creates the incident comment.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param incident_id [String] Incident ID
    # @param incident_comment_id [String] Incident comment ID
    # @param incident_comment [IncidentComment] The incident comment
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_comment_async(resource_group_name, workspace_name, incident_id, incident_comment_id, incident_comment, custom_headers:nil)
      @client.api_version = '2020-01-01'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'Pattern': '^[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}$'" if !@client.subscription_id.nil? && @client.subscription_id.match(Regexp.new('^^[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}$$')).nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, "'workspace_name' should satisfy the constraint - 'MaxLength': '90'" if !workspace_name.nil? && workspace_name.length > 90
      fail ArgumentError, "'workspace_name' should satisfy the constraint - 'MinLength': '1'" if !workspace_name.nil? && workspace_name.length < 1
      fail ArgumentError, 'incident_id is nil' if incident_id.nil?
      fail ArgumentError, 'incident_comment_id is nil' if incident_comment_id.nil?
      fail ArgumentError, 'incident_comment is nil' if incident_comment.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentComment.mapper()
      request_content = @client.serialize(request_mapper,  incident_comment)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/incidents/{incidentId}/comments/{incidentCommentId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'incidentId' => incident_id,'incidentCommentId' => incident_comment_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentComment.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all incident comments.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IncidentCommentList] operation results.
    #
    def list_by_incident_next(next_page_link, custom_headers:nil)
      response = list_by_incident_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all incident comments.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_incident_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_incident_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Gets all incident comments.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_incident_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentCommentList.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all incident comments.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param incident_id [String] Incident ID
    # @param filter [String] Filters the results, based on a Boolean condition.
    # Optional.
    # @param orderby [String] Sorts the results. Optional.
    # @param top [Integer] Returns only the first n results. Optional.
    # @param skip_token [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls. Optional.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IncidentCommentList] which provide lazy access to pages of the
    # response.
    #
    def list_by_incident_as_lazy(resource_group_name, workspace_name, incident_id, filter:nil, orderby:nil, top:nil, skip_token:nil, custom_headers:nil)
      response = list_by_incident_async(resource_group_name, workspace_name, incident_id, filter:filter, orderby:orderby, top:top, skip_token:skip_token, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_incident_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end