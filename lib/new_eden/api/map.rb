require 'hashie'

module NewEden
  module API
    class Map < NewEden::API::Base
      def faction_wars(opts = {})
        return api_call('/Map/FacWarSystems', opts)
      end

      def jumps(opts = {})
        return api_call('/Map/Jumps', opts)
      end

      def kills(opts = {})
        return api_call('/Map/Kills', opts)
      end

      def sovereignties(opts = {})
        return api_call('/Map/Sovereignty', opts)
      end
    end
  end
end
