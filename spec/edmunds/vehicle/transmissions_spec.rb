require 'spec_helper'

RSpec.describe Edmunds::Vehicle::Transmissions do

  let!(:api) { Edmunds::Api.new.vehicles.transmissions }

  context '#details' do
    include_examples 'make request to api', /.*\/vehicle.+\/transmissions.*/, :details, 'transmission_id'
  end

  context '#by_style_id' do
    include_examples 'make request to api', /.*\/vehicle.+\/styles\/style_id\/transmissions.*/, :by_style_id, 'style_id'
  end

end
