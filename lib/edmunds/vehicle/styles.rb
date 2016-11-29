module Edmunds
  module Vehicle
    module Styles

      def count
        api_call '/vehicle/v2/styles/count'
      end

      def make_count(make)
        api_call "/vehicle/v2/#{make}/styles/count"
      end

      def make_model_count(make, model)
        api_call "/vehicle/v2/#{make}/#{model}/styles/count"
      end

      def make_model_year_count(make, model, year)
        api_call "/vehicle/v2/#{make}/#{model}/#{year}/styles/count"
      end

      def id(style_id)
        api_call "/vehicle/v2/styles/#{style_id}"
      end

      def make_model_year(make, model, year)
        api_call "/vehicle/v2/#{make}/#{model}/#{year}/styles"
      end

      def chrome_data(chrome_id)
        api_call "/vehicle/v2/partners/chrome/styles/#{chrome_id}"
      end

    end
  end
end
