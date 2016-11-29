module Edmunds
  module Vehicle
    module Models

      def count(make)
        send_request "/#{make}/models/count"
      end

      def models(make)
        send_request "/#{make}/models"
      end

      def model(make, model)
        send_request "/#{make}/#{model}"
      end

    end
  end
end
