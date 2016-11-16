module Edmunds
  module Vehicle
    module Models

      def count(make, params={})
        api_call "/vehicle/v2/#{make}/models/count", params
      end

      def models(make, params={})
        api_call "/vehicle/v2/#{make}/models", params
      end

      def model(make, model, params={})
        api_call "/vehicle/v2/#{make}/#{model}", params
      end

    end
  end
end
