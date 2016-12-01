require 'spec_helper'

RSpec.describe Edmunds::Vehicle::Colors do

  let!(:api) { Edmunds::Api.new.vehicles.colors }

  context '#details' do
    include_examples 'make request to api', /.*\/vehicle.+\/colors.*/, :details, 'color_id'
  end

  context '#by_style_id' do
    include_examples 'make request to api', /.*\/vehicle.+\/styles\/style_id\/colors.*/, :by_style_id, 'style_id'
  end

end
