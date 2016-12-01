require 'spec_helper'

RSpec.describe Edmunds::Vehicle::Equipment do

  let!(:api) { Edmunds::Api.new.vehicles.equipment }

  context '#details' do
    include_examples 'make request to api', /.*\/vehicle.+\/equipment\/id/, :details, 'id'
  end

  context '#by_style_id' do
    include_examples 'make request to api', /.*\/vehicle.+\/styles\/style_id\/equipment/, :by_style_id, 'style_id'
  end

end
