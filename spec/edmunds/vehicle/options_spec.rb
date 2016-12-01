require 'spec_helper'

RSpec.describe Edmunds::Vehicle::Options do

  let!(:api) { Edmunds::Api.new.vehicles.options }

  context '#details' do
    include_examples 'make request to api', /.*\/vehicle.+\/options\/option_id/, :details, 'option_id'
  end

  context '#by_style_id' do
    include_examples 'make request to api', /.*\/vehicle.+\/styles\/style_id\/options/, :by_style_id, 'style_id'
  end

end
