module Edmunds
  module Vehicle
    module Engines

      def details(engine_id)
        send_request "/engines/#{engine_id}"
      end

      def by_style_id(style_id, options={})
        send_request "/styles/#{style_id}/engines", options
      end

    end
  end
end
