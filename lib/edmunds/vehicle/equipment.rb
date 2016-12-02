module Edmunds
  module Vehicle
    module Equipment

      def details(equipment_id)
        send_request "/equipment/#{equipment_id}"
      end

      def by_style_id(style_id, options={})
        send_request "/styles/#{style_id}/equipment", options
      end

    end
  end
end
