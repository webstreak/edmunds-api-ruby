module Edmunds
  module Vehicle
    module Models

      def count(make)
        api_call "/vehicle/v2/#{make}/models/count"
      end

      def models(make)
        api_call "/vehicle/v2/#{make}/models"
      end

      def model(make, model)
        api_call "/vehicle/v2/#{make}/#{model}"
      end

    end
  end
end
