require 'json'
require 'net/http'
require 'active_support/core_ext/hash'

require 'addressable/uri'
require 'new_eden/api/map'

module NewEden
  class Client
    # API's endpoint base URL
    BASE_URL = 'https://api.eveonline.com'

    # API's Paramaters
    attr_accessor :keyId
    attr_accessor :vCode

    def initialize(options = {})
      options.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
      yield(self) if block_given?
    end

    def get(uri, options = {})
      url = Addressable::URI.parse(BASE_URL + uri)
      options.merge!(auth_params)
      url.query_values = options
      puts url.to_s
      resp = Net::HTTP.get(URI(url.to_s))
      return Hash.from_xml(resp)
    end

    def map
      return NewEden::API::Map.new(self)
    end

    private

    def auth_params
      return {keyId: @keyId, vCode: @vCode}
    end
  end
end
