module Edmunds
  module Vehicle
    module Vin

      def decode(vin, options={})
        send_request "/vins/#{vin}", options
      end

    end
  end
end
