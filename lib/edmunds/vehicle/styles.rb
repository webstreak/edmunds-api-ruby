module Edmunds
  module Vehicle
    module Styles

      def count(options={})
        send_request '/styles/count', options
      end

      def make_count(make, options={})
        send_request "/#{make}/styles/count", options
      end

      def make_model_count(make, model, options={})
        send_request "/#{make}/#{model}/styles/count", options
      end

      def make_model_year_count(make, model, year, options={})
        send_request "/#{make}/#{model}/#{year}/styles/count", options
      end

      def id(style_id, options={})
        send_request "/styles/#{style_id}", options
      end

      def make_model_year(make, model, year, options={})
        send_request "/#{make}/#{model}/#{year}/styles", options
      end

      def chrome_data(chrome_id, options={})
        send_request "/partners/chrome/styles/#{chrome_id}", options
      end

    end
  end
end
