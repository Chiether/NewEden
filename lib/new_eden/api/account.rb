module NewEden
  module API
    class Account < NewEden::API::Base
      def status(opts = {})
        return api_call('/Account/AccountStatus', opts)
      end

      def api_key_info(opts = {})
        return api_call('/Account/APIKeyInfo', opts)
      end

      def characters(opts = {})
        return api_call('/Account/Characters', opts)
      end
    end
  end
end
