module Edmunds
  module Vehicle
    module Models

      def count(make, options={})
        send_request "/#{make}/models/count", options
      end

      def models(make, options={})
        send_request "/#{make}/models", options
      end

      def model(make, model, options={})
        send_request "/#{make}/#{model}", options
      end

    end
  end
end
