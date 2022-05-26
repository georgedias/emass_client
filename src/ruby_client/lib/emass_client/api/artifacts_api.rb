=begin
#Enterprise Mission Assurance Support Service (eMASS)

#The Enterprise Mission Assurance Support Service (eMASS) Representational State Transfer (REST) Application Programming Interface (API) enables users to perform assessments and complete actions associated with system records.   <strong>Register External Application (that use the eMASS API)</strong></br> New users will need to [register](https://nisp.emass.apps.mil/Content/Help/jobaids/eMASS_OT_NewUser_Job_Aid.pdf) an API key with the eMASS development team prior to accessing the site for the first time. The eMASS REST API  requires a client certificate (SSL/TLS, DoD PKI only). Use the `Registration` endpoint to register the client certificate.</br></br>  Every call to the eMASS REST API will require the use of the agreed upon public key certificate and API key.  The API key must be provided in the request header for all endpoint calls (api-key). If the service receives an untrusted certificate or API key, a 401 error response code will be returned along with an error message.</br></br>  <strong>Available Request Headers</strong></br> <table>   <tr>     <th align=left>key</th>     <th align=left>Example Value</th>     <th align=left>Description</th>   </tr>   <tr>     <td>`api-key`</td>     <td>api-key-provided-by-emass</td>     <td>This API key must be provided in the request header for all endpoint calls</td>   </tr>   <tr>     <td>`user-uid`</td>     <td>USER.UID.KEY</td>     <td>This User unique identifier key must be provided in the request header for all PUT, POST, and DELETE endpoint calls</td>   </tr>   <tr>     <td></td><td></td>     <td>       Note: For DoD users this is the DoD ID Number (EIDIPI) on their DoD CAC     </td>   </tr> </table>  </br><strong>Approve API Client for Actionable Requests</strong></br> Users are required to log-in to eMASS and grant permissions for a client to update data within eMASS on their behalf. This is only required for actionable requests (PUT, POST, DELETE). The Registration Endpoint and all GET requests can be accessed without completing this process with the correct permissions. Please note that leaving a field parameter blank (for PUT/POST requests) has the potential to clear information in the active eMASS records.  To establish an account with eMASS and/or acquire an api-key/user-uid, contact one of the listed POC: 

The version of the OpenAPI document: v3.3
Contact: disa.meade.id.mbx.emass-tier-iii-support@mail.mil
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

require 'cgi'

module EmassClient
  class ArtifactsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add one or many artifacts in a system
    # <strong>Information</strong><br> The request body of a POST request through the Artifact Endpoint accepts a single binary file with file extension \".zip\" only. This accepted .zip file should contain one or more files corresponding to existing artifacts or new artifacts that will be created upon successful receipt. Filename uniqueness throughout eMASS will be enforced by the API.<br><br> Upon successful receipt of a file, if a file within the .zip is matched via filename to an artifact existing within the application, the file associated with the artifact will be updated. If no artifact is matched via filename to the application, a new artifact will be created with the following default values. Any values not specified below will be blank. <ul>   <li>isTemplate: false</li>   <li>type: other</li>   <li>category: evidence</li> </ul> To update values other than the file itself, please submit a PUT request.<br>  <strong>Zip file information</strong><br> Upload a zip file contain one or more files corresponding to existing artifacts or new artifacts that will be created upon successful receipt.<br><br> <strong>Business Rules</strong><br> Artifact cannot be saved if the file does not have the following file extensions:      .docx,.doc,.txt,.rtf,.xfdl,.xml,.mht,.mh,tml,.html,.htm,.pdf,.mdb,.accdb,.ppt,     .pptx,.xls,.xlsx,.csv,.log,.jpeg,.jpg,.tiff,.bmp,.tif,.png,.gif,.zip,.rar,.msg,     .vsd,.vsw,.vdx,.z{#},.ckl,.avi,.vsdx  Artifact version cannot be saved if an Artifact with the same file name already exist in the system.  Artifact cannot be saved if the file size exceeds 30MB.
    # @param system_id [Integer] **System Id**: The unique system record identifier.
    # @param zipper [File] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_template 
    # @option opts [String] :type 
    # @option opts [String] :category 
    # @return [ArtifactsResponsePutPost]
    def add_artifacts_by_system_id(system_id, zipper, opts = {})
      data, _status_code, _headers = add_artifacts_by_system_id_with_http_info(system_id, zipper, opts)
      data
    end

    # Add one or many artifacts in a system
    # &lt;strong&gt;Information&lt;/strong&gt;&lt;br&gt; The request body of a POST request through the Artifact Endpoint accepts a single binary file with file extension \&quot;.zip\&quot; only. This accepted .zip file should contain one or more files corresponding to existing artifacts or new artifacts that will be created upon successful receipt. Filename uniqueness throughout eMASS will be enforced by the API.&lt;br&gt;&lt;br&gt; Upon successful receipt of a file, if a file within the .zip is matched via filename to an artifact existing within the application, the file associated with the artifact will be updated. If no artifact is matched via filename to the application, a new artifact will be created with the following default values. Any values not specified below will be blank. &lt;ul&gt;   &lt;li&gt;isTemplate: false&lt;/li&gt;   &lt;li&gt;type: other&lt;/li&gt;   &lt;li&gt;category: evidence&lt;/li&gt; &lt;/ul&gt; To update values other than the file itself, please submit a PUT request.&lt;br&gt;  &lt;strong&gt;Zip file information&lt;/strong&gt;&lt;br&gt; Upload a zip file contain one or more files corresponding to existing artifacts or new artifacts that will be created upon successful receipt.&lt;br&gt;&lt;br&gt; &lt;strong&gt;Business Rules&lt;/strong&gt;&lt;br&gt; Artifact cannot be saved if the file does not have the following file extensions:      .docx,.doc,.txt,.rtf,.xfdl,.xml,.mht,.mh,tml,.html,.htm,.pdf,.mdb,.accdb,.ppt,     .pptx,.xls,.xlsx,.csv,.log,.jpeg,.jpg,.tiff,.bmp,.tif,.png,.gif,.zip,.rar,.msg,     .vsd,.vsw,.vdx,.z{#},.ckl,.avi,.vsdx  Artifact version cannot be saved if an Artifact with the same file name already exist in the system.  Artifact cannot be saved if the file size exceeds 30MB.
    # @param system_id [Integer] **System Id**: The unique system record identifier.
    # @param zipper [File] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_template 
    # @option opts [String] :type 
    # @option opts [String] :category 
    # @return [Array<(ArtifactsResponsePutPost, Integer, Hash)>] ArtifactsResponsePutPost data, response status code and response headers
    def add_artifacts_by_system_id_with_http_info(system_id, zipper, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArtifactsApi.add_artifacts_by_system_id ...'
      end
      # verify the required parameter 'system_id' is set
      if @api_client.config.client_side_validation && system_id.nil?
        fail ArgumentError, "Missing the required parameter 'system_id' when calling ArtifactsApi.add_artifacts_by_system_id"
      end
      # verify the required parameter 'zipper' is set
      if @api_client.config.client_side_validation && zipper.nil?
        fail ArgumentError, "Missing the required parameter 'zipper' when calling ArtifactsApi.add_artifacts_by_system_id"
      end
      allowable_values = ["Procedure", "Diagram", "Policy", "Labor", "Document", "Image", "Other", "Scan Result", "Auditor Report", "unknown_default_open_api"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      allowable_values = ["Implementation Guidance", "Evidence", "unknown_default_open_api"]
      if @api_client.config.client_side_validation && opts[:'category'] && !allowable_values.include?(opts[:'category'])
        fail ArgumentError, "invalid value for \"category\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/systems/{systemId}/artifacts'.sub('{' + 'systemId' + '}', CGI.escape(system_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['Zipper'] = zipper
      form_params['isTemplate'] = opts[:'is_template'] if !opts[:'is_template'].nil?
      form_params['type'] = opts[:'type'] if !opts[:'type'].nil?
      form_params['category'] = opts[:'category'] if !opts[:'category'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ArtifactsResponsePutPost'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'mockType', 'userId']

      new_options = opts.merge(
        :operation => :"ArtifactsApi.add_artifacts_by_system_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArtifactsApi#add_artifacts_by_system_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove one or many artifacts in a system
    # Remove the Artifact(s) matching `systemId` path parameter and request body artifact(s) file name<br><br> <b>Note:</b> Multiple files can be deleted by providing multiple file names at the CL (comma delimited)  Example: --files file1.txt, file2.txt
    # @param system_id [Integer] **System Id**: The unique system record identifier.
    # @param artifacts_request_delete_body_inner [Array<ArtifactsRequestDeleteBodyInner>] Delete artifact files for the given System Id
    # @param [Hash] opts the optional parameters
    # @return [ArtifactsResponseDel]
    def delete_artifact(system_id, artifacts_request_delete_body_inner, opts = {})
      data, _status_code, _headers = delete_artifact_with_http_info(system_id, artifacts_request_delete_body_inner, opts)
      data
    end

    # Remove one or many artifacts in a system
    # Remove the Artifact(s) matching &#x60;systemId&#x60; path parameter and request body artifact(s) file name&lt;br&gt;&lt;br&gt; &lt;b&gt;Note:&lt;/b&gt; Multiple files can be deleted by providing multiple file names at the CL (comma delimited)  Example: --files file1.txt, file2.txt
    # @param system_id [Integer] **System Id**: The unique system record identifier.
    # @param artifacts_request_delete_body_inner [Array<ArtifactsRequestDeleteBodyInner>] Delete artifact files for the given System Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(ArtifactsResponseDel, Integer, Hash)>] ArtifactsResponseDel data, response status code and response headers
    def delete_artifact_with_http_info(system_id, artifacts_request_delete_body_inner, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArtifactsApi.delete_artifact ...'
      end
      # verify the required parameter 'system_id' is set
      if @api_client.config.client_side_validation && system_id.nil?
        fail ArgumentError, "Missing the required parameter 'system_id' when calling ArtifactsApi.delete_artifact"
      end
      # verify the required parameter 'artifacts_request_delete_body_inner' is set
      if @api_client.config.client_side_validation && artifacts_request_delete_body_inner.nil?
        fail ArgumentError, "Missing the required parameter 'artifacts_request_delete_body_inner' when calling ArtifactsApi.delete_artifact"
      end
      # resource path
      local_var_path = '/api/systems/{systemId}/artifacts'.sub('{' + 'systemId' + '}', CGI.escape(system_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(artifacts_request_delete_body_inner)

      # return_type
      return_type = opts[:debug_return_type] || 'ArtifactsResponseDel'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'mockType', 'userId']

      new_options = opts.merge(
        :operation => :"ArtifactsApi.delete_artifact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArtifactsApi#delete_artifact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get one or many artifacts in a system
    # Returns selected artifacts matching parameters to include the file name containing the artifacts.
    # @param system_id [Integer] **System Id**: The unique system record identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filename **File Name**: The file name (to include file-extension).
    # @option opts [String] :control_acronyms **System Acronym**: Filter query by given system acronym (single or comma separated).
    # @option opts [String] :ccis **CCI System**: Filter query by Control Correlation Identifiers (CCIs) (single or comma separated).
    # @option opts [Boolean] :system_only **Systems Only**: Indicates that only system(s) information is retrieved. (default to true)
    # @return [ArtifactsResponseGet]
    def get_system_artifacts(system_id, opts = {})
      data, _status_code, _headers = get_system_artifacts_with_http_info(system_id, opts)
      data
    end

    # Get one or many artifacts in a system
    # Returns selected artifacts matching parameters to include the file name containing the artifacts.
    # @param system_id [Integer] **System Id**: The unique system record identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filename **File Name**: The file name (to include file-extension).
    # @option opts [String] :control_acronyms **System Acronym**: Filter query by given system acronym (single or comma separated).
    # @option opts [String] :ccis **CCI System**: Filter query by Control Correlation Identifiers (CCIs) (single or comma separated).
    # @option opts [Boolean] :system_only **Systems Only**: Indicates that only system(s) information is retrieved. (default to true)
    # @return [Array<(ArtifactsResponseGet, Integer, Hash)>] ArtifactsResponseGet data, response status code and response headers
    def get_system_artifacts_with_http_info(system_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArtifactsApi.get_system_artifacts ...'
      end
      # verify the required parameter 'system_id' is set
      if @api_client.config.client_side_validation && system_id.nil?
        fail ArgumentError, "Missing the required parameter 'system_id' when calling ArtifactsApi.get_system_artifacts"
      end
      # resource path
      local_var_path = '/api/systems/{systemId}/artifacts'.sub('{' + 'systemId' + '}', CGI.escape(system_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filename'] = opts[:'filename'] if !opts[:'filename'].nil?
      query_params[:'controlAcronyms'] = opts[:'control_acronyms'] if !opts[:'control_acronyms'].nil?
      query_params[:'ccis'] = opts[:'ccis'] if !opts[:'ccis'].nil?
      query_params[:'systemOnly'] = opts[:'system_only'] if !opts[:'system_only'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ArtifactsResponseGet'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'mockType', 'userId']

      new_options = opts.merge(
        :operation => :"ArtifactsApi.get_system_artifacts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArtifactsApi#get_system_artifacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update one or many artifacts in a system
    # Updates an artifact for given `systemId` path parameter<br><br>  **Request Body Required Fields** - `filename` - `isTemplate` - `type` - `category`
    # @param system_id [Integer] **System Id**: The unique system record identifier.
    # @param request_body [Array<Object>] See &#x60;information&#x60; above for additional instructions
    # @param [Hash] opts the optional parameters
    # @return [ArtifactsResponsePutPost]
    def update_artifact_by_system_id(system_id, request_body, opts = {})
      data, _status_code, _headers = update_artifact_by_system_id_with_http_info(system_id, request_body, opts)
      data
    end

    # Update one or many artifacts in a system
    # Updates an artifact for given &#x60;systemId&#x60; path parameter&lt;br&gt;&lt;br&gt;  **Request Body Required Fields** - &#x60;filename&#x60; - &#x60;isTemplate&#x60; - &#x60;type&#x60; - &#x60;category&#x60;
    # @param system_id [Integer] **System Id**: The unique system record identifier.
    # @param request_body [Array<Object>] See &#x60;information&#x60; above for additional instructions
    # @param [Hash] opts the optional parameters
    # @return [Array<(ArtifactsResponsePutPost, Integer, Hash)>] ArtifactsResponsePutPost data, response status code and response headers
    def update_artifact_by_system_id_with_http_info(system_id, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArtifactsApi.update_artifact_by_system_id ...'
      end
      # verify the required parameter 'system_id' is set
      if @api_client.config.client_side_validation && system_id.nil?
        fail ArgumentError, "Missing the required parameter 'system_id' when calling ArtifactsApi.update_artifact_by_system_id"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling ArtifactsApi.update_artifact_by_system_id"
      end
      # resource path
      local_var_path = '/api/systems/{systemId}/artifacts'.sub('{' + 'systemId' + '}', CGI.escape(system_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'ArtifactsResponsePutPost'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'mockType', 'userId']

      new_options = opts.merge(
        :operation => :"ArtifactsApi.update_artifact_by_system_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArtifactsApi#update_artifact_by_system_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
