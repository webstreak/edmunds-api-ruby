require 'spec_helper'

RSpec.describe Edmunds::Vehicle::Engines do

  let!(:api) { Edmunds::Api.new.vehicles.engines }

  context '#details' do
    include_examples 'make request to api', /.*\/vehicle.+\/engines.*/, :details, 'engine_id'
  end

  context '#by_style_id' do
    include_examples 'make request to api', /.*\/vehicle.+\/styles\/style_id\/engines.*/, :by_style_id, 'style_id'
  end

end
