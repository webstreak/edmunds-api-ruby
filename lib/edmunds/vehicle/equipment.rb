module Edmunds
  module Vehicle
    module Equipment

      def details(equipment_id)
        send_request "/equipment/#{equipment_id}"
      end

      def by_style_id(style_id)
        send_request "/styles/#{style_id}/equipment"
      end

    end
  end
end
