require 'spec_helper'

RSpec.describe Edmunds::Vehicle::Vin do

  let!(:api) { Edmunds::Api.new.vehicles.vin }

  context '#decode' do
    include_examples 'make request to api', /.*\/vehicle.+\/vins\/VIN?.*/, :decode, 'VIN'
  end

end
