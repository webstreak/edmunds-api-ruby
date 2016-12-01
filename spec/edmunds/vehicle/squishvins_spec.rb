require 'spec_helper'

RSpec.describe Edmunds::Vehicle::Squishvins do

  let!(:api) { Edmunds::Api.new.vehicles.squishvins }

  context '#decode' do
    include_examples 'make request to api', /.*\/vehicle.+\/squishvins\/vin/, :decode, 'vin'
  end

end
