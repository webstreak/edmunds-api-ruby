module Edmunds
  class Api

    include Edmunds::Request

    def vehicles
      self.extend Edmunds::Vehicle
    end

    def media
      self.extend Edmunds::Media
    end

  end
end
