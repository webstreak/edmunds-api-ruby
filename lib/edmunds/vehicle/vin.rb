module Edmunds
  module Vehicle
    module Vin

      def decode(vin)
        api_call "/vehicle/v2/vins/#{vin}"
      end

    end
  end
end
