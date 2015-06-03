require 'hashie'

module NewEden
  module API
    class Map
      attr_accessor :client

      def initialize(client)
        @client = client
      end

      def kills(_options = {})
        resp = client.get('/map/Kills.xml.aspx')
        resp = Hashie::Mash.new(resp.to_h)
        # resp.eveapi.result.rowset.row.first
        # <Hashie::Mash factionKills="38" podKills="0" shipKills="0" solarSystemID="30002410">
        return resp.eveapi
      end
    end
  end
end
