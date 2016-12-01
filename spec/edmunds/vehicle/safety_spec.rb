require 'spec_helper'

RSpec.describe Edmunds::Vehicle::Safety do

  let!(:api) { Edmunds::Api.new.vehicles.safety }

  context 'ratings via style_id' do
    include_examples 'make request to api', /.*\/vehicle.+\/styles\/style_id\/safety/, :ratings, 'style_id'
  end

  context 'ratings via make model year' do
    include_examples 'make request to api', /.*\/vehicle.+\/make\/model\/year\/safety/, :ratings, 'make', 'model', 'year'
  end

end
