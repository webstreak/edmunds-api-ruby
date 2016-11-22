module Edmunds
  module Vehicle
    module Styles

      def count(params={})
        api_call '/vehicle/v2/styles/count', params
      end

      def make_count(make, params={})
        api_call "/vehicle/v2/#{make}/styles/count", params
      end

      def make_model_count(make, model, params={})
        api_call "/vehicle/v2/#{make}/#{model}/styles/count", params
      end

      def make_model_year_count(make, model, year, params={})
        api_call "/vehicle/v2/#{make}/#{model}/#{year}/styles/count", params
      end

      def id(style_id, params={})
        api_call "/vehicle/v2/styles/#{style_id}", params
      end

      def make_model_year(make, model, year, params={})
        api_call "/vehicle/v2/#{make}/#{model}/#{year}/styles", params
      end

      def chrome_data(chrome_id, params={})
        api_call "/vehicle/v2/partners/chrome/styles/#{chrome_id}", params
      end

    end
  end
end
