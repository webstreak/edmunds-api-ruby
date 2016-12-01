module Edmunds
  module Vehicle
    module Squishvins

      def decode(vin)
        send_request "/squishvins/#{vin}"
      end

    end
  end
end
