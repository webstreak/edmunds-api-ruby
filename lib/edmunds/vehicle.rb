module Edmunds

  module Vehicle
    def send_request(path)
      api_call 'vehicle', path
    end
  end

  class Api
    def makes
      self.extend Edmunds::Vehicle::Makes
    end

    def models
      self.extend Edmunds::Vehicle::Models
    end

    def vin
      self.extend Edmunds::Vehicle::Vin
    end

    def styles
      self.extend Edmunds::Vehicle::Styles
    end

    def engines
      self.extend Edmunds::Vehicle::Engines
    end

    def transmissions
      self.extend Edmunds::Vehicle::Transmissions
    end

    def colors
      self.extend Edmunds::Vehicle::Colors
    end

    def options
      self.extend Edmunds::Vehicle::Options
    end

    def equipment
      self.extend Edmunds::Vehicle::Equipment
    end
  end

end
