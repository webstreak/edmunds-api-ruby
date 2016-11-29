module Edmunds
  module Vehicle
    module Makes

      def count
        send_request '/makes/count'
      end

      def all_makes
        send_request '/makes'
      end

      def make(make)
        send_request "/#{make}"
      end

    end
  end
end
