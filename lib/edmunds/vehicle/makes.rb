module Edmunds
  module Vehicle
    module Makes

      def count(params={})
        api_call '/vehicle/v2/makes/count', params
      end

      def makes(params={})
        api_call '/vehicle/v2/makes', params
      end

    end
  end
end
