require 'hashie'

module NewEden
  module API
    class Map < NewEden::API::Base
      def kills(opts = {})
        return api_call('/map/Kills', opts)
      end
    end
  end
end
