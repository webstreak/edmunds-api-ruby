module Edmunds
  module Vehicle
    module Grades

      def by_style_id(style_id)
        send_request "/styles/#{style_id}/grade"
      end

      def details(make, model, year)
        send_request "/#{make}/#{model}/#{year}/grade"
      end

      def rating(make, model, year)
        send_request "/grade/#{make}/#{model}/#{year}"
      end

      def by_review_id(make, model, year, review_id)
        send_request "/#{make}/#{model}/#{year}/grade/#{review_id}"
      end

    end
  end
end
