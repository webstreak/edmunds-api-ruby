module Edmunds
  module Vehicle
    module Colors

      def details(color_id)
        send_request "/colors/#{color_id}"
      end

      def by_style_id(style_id)
        send_request "/styles/#{style_id}/colors"
      end

    end
  end
end
