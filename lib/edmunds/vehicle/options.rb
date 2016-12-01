module Edmunds
  module Vehicle
    module Options

      def details(option_id)
        send_request "/options/#{option_id}"
      end

      def by_style_id(style_id)
        send_request "/styles/#{style_id}/options"
      end

    end
  end
end
