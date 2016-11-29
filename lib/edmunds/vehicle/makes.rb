module Edmunds
  module Vehicle
    module Makes

      def count
        api_call '/vehicle/v2/makes/count'
      end

      def all_makes
        api_call '/vehicle/v2/makes'
      end

      def make(make)
        api_call "/vehicle/v2/#{make}"
      end

    end
  end
end
