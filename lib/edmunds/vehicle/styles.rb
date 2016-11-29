module Edmunds
  module Vehicle
    module Styles

      def count
        send_request '/styles/count'
      end

      def make_count(make)
        send_request "/#{make}/styles/count"
      end

      def make_model_count(make, model)
        send_request "/#{make}/#{model}/styles/count"
      end

      def make_model_year_count(make, model, year)
        send_request "/#{make}/#{model}/#{year}/styles/count"
      end

      def id(style_id)
        send_request "/styles/#{style_id}"
      end

      def make_model_year(make, model, year)
        send_request "/#{make}/#{model}/#{year}/styles"
      end

      def chrome_data(chrome_id)
        send_request "/partners/chrome/styles/#{chrome_id}"
      end

    end
  end
end
