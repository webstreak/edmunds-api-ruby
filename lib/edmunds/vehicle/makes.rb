module Edmunds
  module Vehicle
    module Makes

      def count(options={})
        send_request '/makes/count', options
      end

      def all_makes(options={})
        send_request '/makes', options
      end

      def make(make, options={})
        send_request "/#{make}", options
      end

    end
  end
end
