=begin
#Enterprise Mission Assurance Support Service (eMASS)

#The Enterprise Mission Assurance Support Service (eMASS) Representational State Transfer (REST) Application Programming Interface (API) enables users to perform assessments and complete actions associated with system records.   <strong>Register External Application (that use the eMASS API)</strong></br> New users will need to [register](https://nisp.emass.apps.mil/Content/Help/jobaids/eMASS_OT_NewUser_Job_Aid.pdf) an API key with the eMASS development team prior to accessing the site for the first time. The eMASS REST API  requires a client certificate (SSL/TLS, DoD PKI only). Use the `Registration` endpoint to register the client certificate.</br></br>  Every call to the eMASS REST API will require the use of the agreed upon public key certificate and API key.  The API key must be provided in the request header for all endpoint calls (api-key). If the service receives an untrusted certificate or API key, a 401 error response code will be returned along with an error message.</br></br>  <strong>Available Request Headers</strong></br> <table>   <tr>     <th align=left>key</th>     <th align=left>Example Value</th>     <th align=left>Description</th>   </tr>   <tr>     <td>`api-key`</td>     <td>api-key-provided-by-emass</td>     <td>This API key must be provided in the request header for all endpoint calls</td>   </tr>   <tr>     <td>`user-uid`</td>     <td>USER.UID.KEY</td>     <td>This User unique identifier key must be provided in the request header for all PUT, POST, and DELETE endpoint calls</td>   </tr>   <tr>     <td></td><td></td>     <td>       Note: For DoD users this is the DoD ID Number (EIDIPI) on their DoD CAC     </td>   </tr> </table>  </br><strong>Approve API Client for Actionable Requests</strong></br> Users are required to log-in to eMASS and grant permissions for a client to update data within eMASS on their behalf. This is only required for actionable requests (PUT, POST, DELETE). The Registration Endpoint and all GET requests can be accessed without completing this process with the correct permissions. Please note that leaving a field parameter blank (for PUT/POST requests) has the potential to clear information in the active eMASS records.  To establish an account with eMASS and/or acquire an api-key/user-uid, contact one of the listed POC: 

The version of the OpenAPI document: v3.3
Contact: disa.meade.id.mbx.emass-tier-iii-support@mail.mil
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for EmassClient::ControlsGet
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe EmassClient::ControlsGet do
  let(:instance) { EmassClient::ControlsGet.new }

  describe 'test an instance of ControlsGet' do
    it 'should create an instance of ControlsGet' do
      expect(instance).to be_instance_of(EmassClient::ControlsGet)
    end
  end
  describe 'test attribute "system_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "acronym"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "ccis"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "is_inherited"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "modified_by_overlays"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Privacy", "Requirements", "Concurrency", "unknown_default_open_api"])
      # validator.allowable_values.each do |value|
      #   expect { instance.modified_by_overlays = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "included_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "compliance_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "responsible_entities"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "implementation_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Planned", "Implemented", "Inherited", "Not Applicable", "Manually Inherited", "unknown_default_open_api"])
      # validator.allowable_values.each do |value|
      #   expect { instance.implementation_status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "common_control_provider"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["DoD", "Component", "Enclave", "unknown_default_open_api"])
      # validator.allowable_values.each do |value|
      #   expect { instance.common_control_provider = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "na_justification"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "control_designation"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Common", "System-Specific", "Hybrid", "unknown_default_open_api"])
      # validator.allowable_values.each do |value|
      #   expect { instance.control_designation = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "estimated_completion_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "implementation_narrative"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "slcm_criticality"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "slcm_frequency"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Constantly", "Daily", "Weekly", "Monthly", "Quarterly", "Semi-Annually", "Annually", "Every Two Years", "Every Three Years", "Undetermined", "unknown_default_open_api"])
      # validator.allowable_values.each do |value|
      #   expect { instance.slcm_frequency = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "slcm_method"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Automated", "Semi-Automated", "Manual", "Undetermined", "unknown_default_open_api"])
      # validator.allowable_values.each do |value|
      #   expect { instance.slcm_method = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "slcm_reporting"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "slcm_tracking"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "slcm_comments"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "severity"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Very Low", "Low", "Moderate", "High", "Very High", "unknown_default_open_api"])
      # validator.allowable_values.each do |value|
      #   expect { instance.severity = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "vulnerabilty_summary"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "recommendations"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "relevance_of_threat"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Very Low", "Low", "Moderate", "High", "Very High", "unknown_default_open_api"])
      # validator.allowable_values.each do |value|
      #   expect { instance.relevance_of_threat = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "likelihood"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Very Low", "Low", "Moderate", "High", "Very High", "unknown_default_open_api"])
      # validator.allowable_values.each do |value|
      #   expect { instance.likelihood = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "impact"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Very Low", "Low", "Moderate", "High", "Very High", "unknown_default_open_api"])
      # validator.allowable_values.each do |value|
      #   expect { instance.impact = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "impact_description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "residual_risk_level"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Very Low", "Low", "Moderate", "High", "Very High", "unknown_default_open_api"])
      # validator.allowable_values.each do |value|
      #   expect { instance.residual_risk_level = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "test_method"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Test", "Interview", "Examine", "Test, Interview", "Test, Examine", "Interview, Examine", "Test, Interview, Examine", "unknown_default_open_api"])
      # validator.allowable_values.each do |value|
      #   expect { instance.test_method = value }.not_to raise_error
      # end
    end
  end

end
