=begin
#Enterprise Mission Assurance Support Service (eMASS)

#The Enterprise Mission Assurance Support Service (eMASS) Representational State Transfer (REST) Application Programming Interface (API) enables users to perform assessments and complete actions associated with system records.   <strong>Register External Application (that use the eMASS API)</strong></br> New users will need to [register](https://nisp.emass.apps.mil/Content/Help/jobaids/eMASS_OT_NewUser_Job_Aid.pdf) an API key with the eMASS development team prior to accessing the site for the first time. The eMASS REST API  requires a client certificate (SSL/TLS, DoD PKI only). Use the `Registration` endpoint to register the client certificate.</br></br>  Every call to the eMASS REST API will require the use of the agreed upon public key certificate and API key.  The API key must be provided in the request header for all endpoint calls (api-key). If the service receives an untrusted certificate or API key, a 401 error response code will be returned along with an error message.</br></br>  <strong>Available Request Headers</strong></br> <table>   <tr>     <th align=left>key</th>     <th align=left>Example Value</th>     <th align=left>Description</th>   </tr>   <tr>     <td>`api-key`</td>     <td>api-key-provided-by-emass</td>     <td>This API key must be provided in the request header for all endpoint calls</td>   </tr>   <tr>     <td>`user-uid`</td>     <td>USER.UID.KEY</td>     <td>This User unique identifier key must be provided in the request header for all PUT, POST, and DELETE endpoint calls</td>   </tr>   <tr>     <td></td><td></td>     <td>       Note: For DoD users this is the DoD ID Number (EIDIPI) on their DoD CAC     </td>   </tr> </table>  </br><strong>Approve API Client for Actionable Requests</strong></br> Users are required to log-in to eMASS and grant permissions for a client to update data within eMASS on their behalf. This is only required for actionable requests (PUT, POST, DELETE). The Registration Endpoint and all GET requests can be accessed without completing this process with the correct permissions. Please note that leaving a field parameter blank (for PUT/POST requests) has the potential to clear information in the active eMASS records.  To establish an account with eMASS and/or acquire an api-key/user-uid, contact one of the listed POC: 

The version of the OpenAPI document: v3.3
Contact: disa.meade.id.mbx.emass-tier-iii-support@mail.mil
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0-SNAPSHOT

=end

require 'date'
require 'time'

module EmassClient
  class CmmcGet
    # [Read-Only] Indicates the action that should be taken on the assessment record since the provided sinceDate.
    attr_accessor :operation

    # [Read-Only] The name of the DIB Company.
    attr_accessor :hq_organization_name

    # [Read-Only] The Data Universal Numbering System (DUNS) number.
    attr_accessor :duns

    # [Read-Only] The Unique Entity Identifier assigned to the DIB Company.
    attr_accessor :unique_entity_identifier

    # [Read-Only] The five position code(s) associated with the Organization Seeking Certification (OSC).
    attr_accessor :cage_codes

    # [Read-Only] The name of the Organization Seeking Certification.
    attr_accessor :osc_name

    # [Read-Only] The scope of the OSC assessment.
    attr_accessor :scope

    # [Read-Only] Brief description of the scope of the OSC assessment
    attr_accessor :scope_description

    # [Read-Only] The CMMC award level.
    attr_accessor :awarded_cmmc_level

    # [Read-Only] Expiration date of the awarded CMMC certification.
    attr_accessor :expiration_date

    # [Read-Only] Unique identifier for the assessment/certificate.
    attr_accessor :certificate_id

    # [Read-Only] Version of the CMMC Model used as part of the assessment.
    attr_accessor :model_version

    attr_accessor :ssps

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'operation' => :'operation',
        :'hq_organization_name' => :'hqOrganizationName',
        :'duns' => :'duns',
        :'unique_entity_identifier' => :'uniqueEntityIdentifier',
        :'cage_codes' => :'cageCodes',
        :'osc_name' => :'oscName',
        :'scope' => :'scope',
        :'scope_description' => :'scopeDescription',
        :'awarded_cmmc_level' => :'awardedCMMCLevel',
        :'expiration_date' => :'expirationDate',
        :'certificate_id' => :'certificateId',
        :'model_version' => :'modelVersion',
        :'ssps' => :'ssps'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'operation' => :'String',
        :'hq_organization_name' => :'String',
        :'duns' => :'String',
        :'unique_entity_identifier' => :'String',
        :'cage_codes' => :'String',
        :'osc_name' => :'String',
        :'scope' => :'String',
        :'scope_description' => :'String',
        :'awarded_cmmc_level' => :'String',
        :'expiration_date' => :'Integer',
        :'certificate_id' => :'String',
        :'model_version' => :'String',
        :'ssps' => :'Array<Ssps>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'operation',
        :'hq_organization_name',
        :'duns',
        :'unique_entity_identifier',
        :'cage_codes',
        :'osc_name',
        :'scope',
        :'scope_description',
        :'awarded_cmmc_level',
        :'expiration_date',
        :'certificate_id',
        :'model_version',
        :'ssps'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `EmassClient::CmmcGet` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `EmassClient::CmmcGet`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'operation')
        self.operation = attributes[:'operation']
      end

      if attributes.key?(:'hq_organization_name')
        self.hq_organization_name = attributes[:'hq_organization_name']
      end

      if attributes.key?(:'duns')
        self.duns = attributes[:'duns']
      end

      if attributes.key?(:'unique_entity_identifier')
        self.unique_entity_identifier = attributes[:'unique_entity_identifier']
      end

      if attributes.key?(:'cage_codes')
        self.cage_codes = attributes[:'cage_codes']
      end

      if attributes.key?(:'osc_name')
        self.osc_name = attributes[:'osc_name']
      end

      if attributes.key?(:'scope')
        self.scope = attributes[:'scope']
      end

      if attributes.key?(:'scope_description')
        self.scope_description = attributes[:'scope_description']
      end

      if attributes.key?(:'awarded_cmmc_level')
        self.awarded_cmmc_level = attributes[:'awarded_cmmc_level']
      end

      if attributes.key?(:'expiration_date')
        self.expiration_date = attributes[:'expiration_date']
      end

      if attributes.key?(:'certificate_id')
        self.certificate_id = attributes[:'certificate_id']
      end

      if attributes.key?(:'model_version')
        self.model_version = attributes[:'model_version']
      end

      if attributes.key?(:'ssps')
        if (value = attributes[:'ssps']).is_a?(Array)
          self.ssps = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      operation_validator = EnumAttributeValidator.new('String', ["ADDED", "UPDATED", "DELETED", "unknown_default_open_api"])
      return false unless operation_validator.valid?(@operation)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] operation Object to be assigned
    def operation=(operation)
      validator = EnumAttributeValidator.new('String', ["ADDED", "UPDATED", "DELETED", "unknown_default_open_api"])
      unless validator.valid?(operation)
        fail ArgumentError, "invalid value for \"operation\", must be one of #{validator.allowable_values}."
      end
      @operation = operation
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          operation == o.operation &&
          hq_organization_name == o.hq_organization_name &&
          duns == o.duns &&
          unique_entity_identifier == o.unique_entity_identifier &&
          cage_codes == o.cage_codes &&
          osc_name == o.osc_name &&
          scope == o.scope &&
          scope_description == o.scope_description &&
          awarded_cmmc_level == o.awarded_cmmc_level &&
          expiration_date == o.expiration_date &&
          certificate_id == o.certificate_id &&
          model_version == o.model_version &&
          ssps == o.ssps
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [operation, hq_organization_name, duns, unique_entity_identifier, cage_codes, osc_name, scope, scope_description, awarded_cmmc_level, expiration_date, certificate_id, model_version, ssps].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = EmassClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
