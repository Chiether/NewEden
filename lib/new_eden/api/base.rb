require 'hashie'

module NewEden
  module API
    class Base
      attr_accessor :client
      def initialize(client)
        @client = client
      end

      def api_call(uri, _opt = {}, ext = '.xml.aspx')
        resp = @client.get(uri + ext)
        return Hashie::Mash.new(resp.to_h).eveapi
      end
    end
  end
end
