module Edmunds
  module Vehicle
    module Makes

      def count(params={})
        api_call '/vehicle/v2/makes/count', params
      end

      def all_makes(params={})
        api_call '/vehicle/v2/makes', params
      end

      def make(make, params={})
        api_call "/vehicle/v2/#{make}", params
      end

    end
  end
end
