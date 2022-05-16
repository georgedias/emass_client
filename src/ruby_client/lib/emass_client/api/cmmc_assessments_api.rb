=begin
#Enterprise Mission Assurance Support Service (eMASS)

#The Enterprise Mission Assurance Support Service (eMASS) Representational State Transfer (REST) Application Programming Interface (API) enables users to perform assessments and complete actions associated with system records.   <strong>Register External Application (that use the eMASS API)</strong></br> New users will need to [register](https://nisp.emass.apps.mil/Content/Help/jobaids/eMASS_OT_NewUser_Job_Aid.pdf) an API key with the eMASS development team prior to accessing the site for the first time. The eMASS REST API requires a client certificate (SSL/TLS, DoD PKI only). Use the `Registration` endpoint to register the client certificate.</br></br>  Every call to the eMASS REST API will require the use of the agreed upon public key certificate and API key. The API key must be provided in the request header for all endpoint calls (api-key). If the service receives an untrusted certificate or API key, a 401 error response code will be returned along with an error message.</br></br>  <strong>Available Request Headers</strong></br> <table>   <tr>     <th align=left>key</th>     <th align=left>Example Value</th>     <th align=left>Description</th>   </tr>   <tr>     <td>`api-key`</td>     <td>api-key-provided-by-emass</td>     <td>This API key must be provided in the request header for all endpoint calls</td>   </tr>   <tr>     <td>`user-uid`</td>     <td>USER.UID.KEY</td>     <td>This User unique identifier key must be provided in the request header for all PUT, POST, and DELETE endpoint calls</td>   </tr>   <tr>     <td></td><td></td>     <td>       Note: For DoD users this is the DoD ID Number (EIDIPI) on their DoD CAC     </td>   </tr> </table>  </br><strong>Approve API Client for Actionable Requests</strong></br> Users are required to log-in to eMASS and grant permissions for a client to update data within eMASS on their behalf. This is only required for actionable requests (PUT, POST, DELETE). The Registration Endpoint and all GET requests can be accessed without completing this process with the correct permissions. Please note that leaving a field parameter blank (for PUT/POST requests) has the potential to clear information in the active eMASS records.  To establish an account with eMASS and/or acquire an api-key/user-uid, contact one of the listed POC: 

The version of the OpenAPI document: v3.3
Contact: disa.meade.id.mbx.emass-tier-iii-support@mail.mil
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0-SNAPSHOT

=end

require 'cgi'

module EmassClient
  class CMMCAssessmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get CMMC assessment information
    # Get all CMMC assessment after the given date `sinceDate` parameter. It is available to CMMC eMASS only.
    # @param since_date [String] **Date** CMMC date (Unix date format)
    # @param [Hash] opts the optional parameters
    # @return [CmmcResponseGet]
    def get_cmmc_assessments(since_date, opts = {})
      data, _status_code, _headers = get_cmmc_assessments_with_http_info(since_date, opts)
      data
    end

    # Get CMMC assessment information
    # Get all CMMC assessment after the given date &#x60;sinceDate&#x60; parameter. It is available to CMMC eMASS only.
    # @param since_date [String] **Date** CMMC date (Unix date format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(CmmcResponseGet, Integer, Hash)>] CmmcResponseGet data, response status code and response headers
    def get_cmmc_assessments_with_http_info(since_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CMMCAssessmentsApi.get_cmmc_assessments ...'
      end
      # verify the required parameter 'since_date' is set
      if @api_client.config.client_side_validation && since_date.nil?
        fail ArgumentError, "Missing the required parameter 'since_date' when calling CMMCAssessmentsApi.get_cmmc_assessments"
      end
      # resource path
      local_var_path = '/api/cmmc-assessments'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sinceDate'] = since_date

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CmmcResponseGet'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'mockType', 'userId']

      new_options = opts.merge(
        :operation => :"CMMCAssessmentsApi.get_cmmc_assessments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CMMCAssessmentsApi#get_cmmc_assessments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
