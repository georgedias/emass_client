=begin
#Enterprise Mission Assurance Support Service (eMASS)

#The Enterprise Mission Assurance Support Service (eMASS) Representational State Transfer (REST) Application Programming Interface (API) enables users to perform assessments and complete actions associated with system records.   <strong>Register External Application (that use the eMASS API)</strong></br> New users will need to [register](https://nisp.emass.apps.mil/Content/Help/jobaids/eMASS_OT_NewUser_Job_Aid.pdf) an API key with the eMASS development team prior to accessing the site for the first time. The eMASS REST API  requires a client certificate (SSL/TLS, DoD PKI only). Use the `Registration` endpoint to register the client certificate.</br></br>  Every call to the eMASS REST API will require the use of the agreed upon public key certificate and API key.  The API key must be provided in the request header for all endpoint calls (api-key). If the service receives an untrusted certificate or API key, a 401 error response code will be returned along with an error message.</br></br>  <strong>Available Request Headers</strong></br> <table>   <tr>     <th align=left>key</th>     <th align=left>Example Value</th>     <th align=left>Description</th>   </tr>   <tr>     <td>`api-key`</td>     <td>api-key-provided-by-emass</td>     <td>This API key must be provided in the request header for all endpoint calls</td>   </tr>   <tr>     <td>`user-uid`</td>     <td>USER.UID.KEY</td>     <td>This User unique identifier key must be provided in the request header for all PUT, POST, and DELETE endpoint calls</td>   </tr>   <tr>     <td></td><td></td>     <td>       Note: For DoD users this is the DoD ID Number (EIDIPI) on their DoD CAC     </td>   </tr> </table>  </br><strong>Approve API Client for Actionable Requests</strong></br> Users are required to log-in to eMASS and grant permissions for a client to update data within eMASS on their behalf. This is only required for actionable requests (PUT, POST, DELETE). The Registration Endpoint and all GET requests can be accessed without completing this process with the correct permissions. Please note that leaving a field parameter blank (for PUT/POST requests) has the potential to clear information in the active eMASS records.  To establish an account with eMASS and/or acquire an api-key/user-uid, contact one of the listed POC: 

The version of the OpenAPI document: v3.3
Contact: disa.meade.id.mbx.emass-tier-iii-support@mail.mil
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0-SNAPSHOT

=end

require 'cgi'

module EmassClient
  class StaticCodeScansApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Upload static code scans or Clear static code scans
    # Upload or clear application scan findings into a system's `systemId` assets module.  **Note:** To clear an application's findings, use only the field `clearFindings` as the Request body and set it to true. Example:  ``` [    {      \"application\": {        \"applicationName\": \"Artemis\",        \"version\": \"Version 5.0\"      },      \"applicationFindings\": [        { \"clearFindings\": true }      ]    }  ] ```
    # @param system_id [Integer] **System Id**: The unique system record identifier.
    # @param static_code_request_post_body [StaticCodeRequestPostBody] Add static code scans or Clear static code scans
    # @param [Hash] opts the optional parameters
    # @return [StaticCodeResponsePost]
    def add_static_code_scans_by_system_id(system_id, static_code_request_post_body, opts = {})
      data, _status_code, _headers = add_static_code_scans_by_system_id_with_http_info(system_id, static_code_request_post_body, opts)
      data
    end

    # Upload static code scans or Clear static code scans
    # Upload or clear application scan findings into a system&#39;s &#x60;systemId&#x60; assets module.  **Note:** To clear an application&#39;s findings, use only the field &#x60;clearFindings&#x60; as the Request body and set it to true. Example:  &#x60;&#x60;&#x60; [    {      \&quot;application\&quot;: {        \&quot;applicationName\&quot;: \&quot;Artemis\&quot;,        \&quot;version\&quot;: \&quot;Version 5.0\&quot;      },      \&quot;applicationFindings\&quot;: [        { \&quot;clearFindings\&quot;: true }      ]    }  ] &#x60;&#x60;&#x60;
    # @param system_id [Integer] **System Id**: The unique system record identifier.
    # @param static_code_request_post_body [StaticCodeRequestPostBody] Add static code scans or Clear static code scans
    # @param [Hash] opts the optional parameters
    # @return [Array<(StaticCodeResponsePost, Integer, Hash)>] StaticCodeResponsePost data, response status code and response headers
    def add_static_code_scans_by_system_id_with_http_info(system_id, static_code_request_post_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StaticCodeScansApi.add_static_code_scans_by_system_id ...'
      end
      # verify the required parameter 'system_id' is set
      if @api_client.config.client_side_validation && system_id.nil?
        fail ArgumentError, "Missing the required parameter 'system_id' when calling StaticCodeScansApi.add_static_code_scans_by_system_id"
      end
      # verify the required parameter 'static_code_request_post_body' is set
      if @api_client.config.client_side_validation && static_code_request_post_body.nil?
        fail ArgumentError, "Missing the required parameter 'static_code_request_post_body' when calling StaticCodeScansApi.add_static_code_scans_by_system_id"
      end
      # resource path
      local_var_path = '/api/systems/{systemId}/static-code-scans'.sub('{' + 'systemId' + '}', CGI.escape(system_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(static_code_request_post_body)

      # return_type
      return_type = opts[:debug_return_type] || 'StaticCodeResponsePost'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'mockType', 'userId']

      new_options = opts.merge(
        :operation => :"StaticCodeScansApi.add_static_code_scans_by_system_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StaticCodeScansApi#add_static_code_scans_by_system_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
