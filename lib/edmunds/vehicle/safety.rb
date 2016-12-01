module Edmunds
  module Vehicle
    module Safety

      def ratings(*args)
        if args.count == 1
          send_request "/styles/#{args[0]}/safety"
        else
          make = args[0]
          model = args[1]
          year = args[2]
          send_request "/#{make}/#{model}/#{year}/safety"
        end
      end

    end
  end
end
