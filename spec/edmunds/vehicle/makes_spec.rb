require 'spec_helper'

RSpec.describe Edmunds::Vehicle::Makes do

  let!(:api) { Edmunds::Api.new.vehicles.makes }

  context '#count' do
    before do
      body = JSON.generate({makes: 1})
      stub_request(:get, /.*\/vehicle.+\/makes\/count.*/).to_return(status: 200, body: body)
    end

    it 'no parameters' do
      api.count
      expect(WebMock).to have_requested(:get, /.*\/vehicle.+\/makes\/count.*/).once
    end

    it '#count accept parameters' do
      api.count(view: 'full')
      expect(WebMock).to have_requested(:get, /.*\/vehicle.+\/makes\/count.*/).with(query: hash_including({view: 'full'}))
    end
  end

end
