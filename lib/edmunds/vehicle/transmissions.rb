module Edmunds
  module Vehicle
    module Transmissions

      def details(transmission_id)
        send_request "/transmissions/#{transmission_id}"
      end

      def by_style_id(style_id)
        send_request "/styles/#{style_id}/transmissions"
      end

    end
  end
end
