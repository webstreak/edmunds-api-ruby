module Edmunds
  module Vehicle
    module Vin

      def decode(vin, params={})
        api_call "/vehicle/v2/vins/#{vin}", params
      end

    end
  end
end
