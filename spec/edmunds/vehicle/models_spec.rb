require 'spec_helper'

RSpec.describe Edmunds::Vehicle::Models do

  let!(:api) { Edmunds::Api.new.vehicles.models }

end
