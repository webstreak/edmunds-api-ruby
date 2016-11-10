module Edmunds
  class Api

    def makes
      self.extend(Edmunds::Vehicle::Makes)
    end

    def models
      self.extend Edmunds::Vehicle::Models
    end

  end
end
