=begin
#Enterprise Mission Assurance Support Service (eMASS)

#The Enterprise Mission Assurance Support Service (eMASS) Representational State Transfer (REST) Application Programming Interface (API) enables users to perform assessments and complete actions associated with system records.   <strong>Register External Application (that use the eMASS API)</strong></br> New users will need to [register](https://nisp.emass.apps.mil/Content/Help/jobaids/eMASS_OT_NewUser_Job_Aid.pdf) an API key with the eMASS development team prior to accessing the site for the first time. The eMASS REST API  requires a client certificate (SSL/TLS, DoD PKI only). Use the `Registration` endpoint to register the client certificate.</br></br>  Every call to the eMASS REST API will require the use of the agreed upon public key certificate and API key.  The API key must be provided in the request header for all endpoint calls (api-key). If the service receives an untrusted certificate or API key, a 401 error response code will be returned along with an error message.</br></br>  <strong>Available Request Headers</strong></br> <table>   <tr>     <th align=left>key</th>     <th align=left>Example Value</th>     <th align=left>Description</th>   </tr>   <tr>     <td>`api-key`</td>     <td>api-key-provided-by-emass</td>     <td>This API key must be provided in the request header for all endpoint calls</td>   </tr>   <tr>     <td>`user-uid`</td>     <td>USER.UID.KEY</td>     <td>This User unique identifier key must be provided in the request header for all PUT, POST, and DELETE endpoint calls</td>   </tr>   <tr>     <td></td><td></td>     <td>       Note: For DoD users this is the DoD ID Number (EIDIPI) on their DoD CAC     </td>   </tr> </table>  </br><strong>Approve API Client for Actionable Requests</strong></br> Users are required to log-in to eMASS and grant permissions for a client to update data within eMASS on their behalf. This is only required for actionable requests (PUT, POST, DELETE). The Registration Endpoint and all GET requests can be accessed without completing this process with the correct permissions. Please note that leaving a field parameter blank (for PUT/POST requests) has the potential to clear information in the active eMASS records.  To establish an account with eMASS and/or acquire an api-key/user-uid, contact one of the listed POC: 

The version of the OpenAPI document: v3.3
Contact: disa.meade.id.mbx.emass-tier-iii-support@mail.mil
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0

=end

require 'date'
require 'time'

module EmassClient
  class ArtifactsGet
    # [Required] Unique eMASS system identifier.
    attr_accessor :system_id

    # [Required] File name should match exactly one file within the provided zip file. 1000 Characters.
    attr_accessor :filename

    # [Read-only] Indicates whether an artifact is inherited.
    attr_accessor :is_inherited

    # [Required] Indicates whether an artifact template.
    attr_accessor :is_template

    # [Required] Artifact type options
    attr_accessor :type

    # [Required] Artifact category options
    attr_accessor :category

    # [Optional] Artifact description. 2000 Characters.
    attr_accessor :description

    # [Optional] Artifact reference page number. 50 Characters.
    attr_accessor :ref_page_number

    # [Optional] CCI associated with test result.
    attr_accessor :ccis

    # [Optional] Control acronym associated with the artifact. NIST SP 800-53 Revision 4 defined.
    attr_accessor :controls

    # [Read-Only] Standard MIME content type derived from file extension.
    attr_accessor :mime_content_type

    # [Read-Only] File size of attached artifact.
    attr_accessor :file_size

    # [Optional] Date Artifact expires and requires review. In Unix Date format.
    attr_accessor :artifact_expiration_date

    # [Conditional] Date Artifact was last reviewed.. Unix time format.
    attr_accessor :last_reviewed_date

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
        :'system_id' => :'systemId',
        :'filename' => :'filename',
        :'is_inherited' => :'isInherited',
        :'is_template' => :'isTemplate',
        :'type' => :'type',
        :'category' => :'category',
        :'description' => :'description',
        :'ref_page_number' => :'refPageNumber',
        :'ccis' => :'ccis',
        :'controls' => :'controls',
        :'mime_content_type' => :'mimeContentType',
        :'file_size' => :'fileSize',
        :'artifact_expiration_date' => :'artifactExpirationDate',
        :'last_reviewed_date' => :'lastReviewedDate'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'system_id' => :'Integer',
        :'filename' => :'String',
        :'is_inherited' => :'Boolean',
        :'is_template' => :'Boolean',
        :'type' => :'String',
        :'category' => :'String',
        :'description' => :'String',
        :'ref_page_number' => :'String',
        :'ccis' => :'String',
        :'controls' => :'String',
        :'mime_content_type' => :'String',
        :'file_size' => :'String',
        :'artifact_expiration_date' => :'Integer',
        :'last_reviewed_date' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'is_inherited',
        :'is_template',
        :'description',
        :'ref_page_number',
        :'ccis',
        :'controls',
        :'mime_content_type',
        :'file_size',
        :'artifact_expiration_date',
        :'last_reviewed_date'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `EmassClient::ArtifactsGet` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `EmassClient::ArtifactsGet`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'system_id')
        self.system_id = attributes[:'system_id']
      end

      if attributes.key?(:'filename')
        self.filename = attributes[:'filename']
      end

      if attributes.key?(:'is_inherited')
        self.is_inherited = attributes[:'is_inherited']
      end

      if attributes.key?(:'is_template')
        self.is_template = attributes[:'is_template']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'ref_page_number')
        self.ref_page_number = attributes[:'ref_page_number']
      end

      if attributes.key?(:'ccis')
        self.ccis = attributes[:'ccis']
      end

      if attributes.key?(:'controls')
        self.controls = attributes[:'controls']
      end

      if attributes.key?(:'mime_content_type')
        self.mime_content_type = attributes[:'mime_content_type']
      end

      if attributes.key?(:'file_size')
        self.file_size = attributes[:'file_size']
      end

      if attributes.key?(:'artifact_expiration_date')
        self.artifact_expiration_date = attributes[:'artifact_expiration_date']
      end

      if attributes.key?(:'last_reviewed_date')
        self.last_reviewed_date = attributes[:'last_reviewed_date']
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
      type_validator = EnumAttributeValidator.new('String', ["Procedure", "Diagram", "Policy", "Labor", "Document", "Image", "Other", "Scan Result", "Auditor Report", "unknown_default_open_api"])
      return false unless type_validator.valid?(@type)
      category_validator = EnumAttributeValidator.new('String', ["Implementation Guidance", "Evidence", "unknown_default_open_api"])
      return false unless category_validator.valid?(@category)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["Procedure", "Diagram", "Policy", "Labor", "Document", "Image", "Other", "Scan Result", "Auditor Report", "unknown_default_open_api"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] category Object to be assigned
    def category=(category)
      validator = EnumAttributeValidator.new('String', ["Implementation Guidance", "Evidence", "unknown_default_open_api"])
      unless validator.valid?(category)
        fail ArgumentError, "invalid value for \"category\", must be one of #{validator.allowable_values}."
      end
      @category = category
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          system_id == o.system_id &&
          filename == o.filename &&
          is_inherited == o.is_inherited &&
          is_template == o.is_template &&
          type == o.type &&
          category == o.category &&
          description == o.description &&
          ref_page_number == o.ref_page_number &&
          ccis == o.ccis &&
          controls == o.controls &&
          mime_content_type == o.mime_content_type &&
          file_size == o.file_size &&
          artifact_expiration_date == o.artifact_expiration_date &&
          last_reviewed_date == o.last_reviewed_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [system_id, filename, is_inherited, is_template, type, category, description, ref_page_number, ccis, controls, mime_content_type, file_size, artifact_expiration_date, last_reviewed_date].hash
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
