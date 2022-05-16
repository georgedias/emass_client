=begin
#Enterprise Mission Assurance Support Service (eMASS)

#The Enterprise Mission Assurance Support Service (eMASS) Representational State Transfer (REST) Application Programming Interface (API) enables users to perform assessments and complete actions associated with system records.   <strong>Register External Application (that use the eMASS API)</strong></br> New users will need to [register](https://nisp.emass.apps.mil/Content/Help/jobaids/eMASS_OT_NewUser_Job_Aid.pdf) an API key with the eMASS development team prior to accessing the site for the first time. The eMASS REST API requires a client certificate (SSL/TLS, DoD PKI only). Use the `Registration` endpoint to register the client certificate.</br></br>  Every call to the eMASS REST API will require the use of the agreed upon public key certificate and API key. The API key must be provided in the request header for all endpoint calls (api-key). If the service receives an untrusted certificate or API key, a 401 error response code will be returned along with an error message.</br></br>  <strong>Available Request Headers</strong></br> <table>   <tr>     <th align=left>key</th>     <th align=left>Example Value</th>     <th align=left>Description</th>   </tr>   <tr>     <td>`api-key`</td>     <td>api-key-provided-by-emass</td>     <td>This API key must be provided in the request header for all endpoint calls</td>   </tr>   <tr>     <td>`user-uid`</td>     <td>USER.UID.KEY</td>     <td>This User unique identifier key must be provided in the request header for all PUT, POST, and DELETE endpoint calls</td>   </tr>   <tr>     <td></td><td></td>     <td>       Note: For DoD users this is the DoD ID Number (EIDIPI) on their DoD CAC     </td>   </tr> </table>  </br><strong>Approve API Client for Actionable Requests</strong></br> Users are required to log-in to eMASS and grant permissions for a client to update data within eMASS on their behalf. This is only required for actionable requests (PUT, POST, DELETE). The Registration Endpoint and all GET requests can be accessed without completing this process with the correct permissions. Please note that leaving a field parameter blank (for PUT/POST requests) has the potential to clear information in the active eMASS records.  To establish an account with eMASS and/or acquire an api-key/user-uid, contact one of the listed POC: 

The version of the OpenAPI document: v3.3
Contact: disa.meade.id.mbx.emass-tier-iii-support@mail.mil
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for EmassClient::POAMApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'POAMApi' do
  before do
    # run before each test
    @api_instance = EmassClient::POAMApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of POAMApi' do
    it 'should create an instance of POAMApi' do
      expect(@api_instance).to be_instance_of(EmassClient::POAMApi)
    end
  end

  # unit tests for add_poam_by_system_id
  # Add one or many POA&amp;M items in a system
  # Add a POA&amp;M for given &#x60;systemId&#x60;&lt;br&gt;  **Request Body Required Fields** - &#x60;status&#x60; - &#x60;vulnerabilityDescription&#x60; - &#x60;sourceIdentVuln&#x60; - &#x60;pocOrganization&#x60; - &#x60;resources&#x60;  **Note**&lt;br /&gt; If a POC email is supplied, the application will attempt to locate a user already registered within the application and pre-populate any information not explicitly supplied in the request. If no such user is found, these fields are **required** within the request.&lt;br&gt; &#x60;pocFirstName&#x60;, &#x60;pocLastName&#x60;, &#x60;pocPhoneNumber&#x60;&lt;br /&gt;
  # @param system_id **System Id**: The unique system record identifier.
  # @param request_body Add POA&amp;M(s) to a system (systemID)
  # @param [Hash] opts the optional parameters
  # @return [PoamResponsePost]
  describe 'add_poam_by_system_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_poam
  # Remove one or many POA&amp;M items in a system
  # Remove the POA&amp;M matching &#x60;systemId&#x60; path parameter and &#x60;poamId&#x60; Request Body&lt;br&gt;
  # @param system_id **System Id**: The unique system record identifier.
  # @param delete_poams_inner Delete the given POA&amp;M Id
  # @param [Hash] opts the optional parameters
  # @return [PoamResponseDelete]
  describe 'delete_poam test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_system_poams
  # Get one or many POA&amp;M items in a system
  # Returns system(s) containing POA&amp;M items for matching parameters.
  # @param system_id **System Id**: The unique system record identifier.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :scheduled_completion_date_start **Date Started**: Filter query by the scheduled completion start date (Unix date format).
  # @option opts [String] :scheduled_completion_date_end **Date Ended**: Filter query by the scheduled completion start date (Unix date format).
  # @option opts [String] :control_acronyms **System Acronym**: Filter query by given system acronym (single or comma separated).
  # @option opts [String] :ccis **CCI System**: Filter query by Control Correlation Identifiers (CCIs) (single or comma separated).
  # @option opts [Boolean] :system_only **Systems Only**: Indicates that only system(s) information is retrieved.
  # @return [PoamResponseGetSystems]
  describe 'get_system_poams test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_system_poams_by_poam_id
  # Get POA&amp;M item by ID in a system
  # Returns system(s) containing POA&amp;M items for matching parameters.
  # @param system_id **System Id**: The unique system record identifier.
  # @param poam_id **POA&amp;M Id**: The unique POA&amp;M record identifier.
  # @param [Hash] opts the optional parameters
  # @return [PoamResponseGetPoams]
  describe 'get_system_poams_by_poam_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_poam_by_system_id
  # Update one or many POA&amp;M items in a system
  # Update a POA&amp;M for given &#x60;systemId&#x60;&lt;br&gt;  **Request Body Required Fields** - &#x60;poamId&#x60; - &#x60;displayPoamId&#x60; - &#x60;status&#x60; - &#x60;vulnerabilityDescription&#x60; - &#x60;sourceIdentVuln&#x60; - &#x60;pocOrganization&#x60; - &#x60;reviewStatus&#x60;  **Notes** - If a POC email is supplied, the application will attempt to locate a user already   registered within the application and pre-populate any information not explicitly supplied   in the request. If no such user is found, these fields are **required** within the request.&lt;br&gt;   &#x60;pocOrganization&#x60;, &#x60;pocFirstName&#x60;, &#x60;pocLastName&#x60;, &#x60;pocEmail&#x60;, &#x60;pocPhoneNumber&#x60;&lt;br /&gt;  - To delete a milestone through the POA&amp;M PUT the field &#x60;isActive&#x60; must be set to &#x60;false&#x60;: &#x60;isActive&#x3D;false&#x60;.
  # @param system_id **System Id**: The unique system record identifier.
  # @param request_body Update an existing control by Id
  # @param [Hash] opts the optional parameters
  # @return [PoamResponsePut]
  describe 'update_poam_by_system_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
