module NewEden
  module API
    class Account < NewEden::API::Base
      def status(opts = {})
        return api_call('/account/AccountStatus', opts)
      end

      def api_key_info(opts = {})
        return api_call('/account/APIKeyInfo', opts)
      end
    end
  end
end
