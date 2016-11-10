module Edmunds
  class Api

    include Edmunds::Request

    def vehicles
      self.extend Edmunds::Vehicle
    end

  end
end
