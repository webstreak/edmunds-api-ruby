require 'spec_helper'

RSpec.describe Edmunds::Vehicle::Makes do

  let!(:api) { Edmunds::Api.new.vehicles.makes }

  context '#count' do
    include_examples 'make request to api', /.*\/vehicle.+\/makes\/count.*/, :count
  end

  context '#all_makes' do
    include_examples 'make request to api', /.*\/vehicle.+\/makes\?.*/, :all_makes
  end

  context '#make' do
    include_examples 'make request to api', /.*\/vehicle.+\/mazda\?.*/, :make, 'mazda'
  end

end
