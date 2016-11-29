module Edmunds
  module Vehicle
    module Vin

      def decode(vin)
        send_request "/vins/#{vin}"
      end

    end
  end
end
