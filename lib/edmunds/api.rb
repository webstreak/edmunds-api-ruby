module Edmunds
  class Api

    include Edmunds::Request

    def initialize(params={})
      @request_user_params = params
    end

    def vehicles
      self.extend Edmunds::Vehicle
    end

  end
end
