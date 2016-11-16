require 'spec_helper'

RSpec.describe Edmunds::Vehicle::Models do

  let!(:api) { Edmunds::Api.new.vehicles.models }

  context '#count' do
    include_examples 'make request to api', /.*\/vehicle.+\/models\/count.*/, :count, 'ford'
  end

  context '#models' do
    include_examples 'make request to api', /.*\/vehicle.+\/models\?.*/, :models, 'ford'
  end

  context '#model' do
    include_examples 'make request to api', /.*\/vehicle.+\/ford\/focus\?.*/, :model, 'ford', 'focus'
  end

end
