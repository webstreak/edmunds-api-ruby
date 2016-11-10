require 'spec_helper'

RSpec.describe Edmunds::Request do

  class Api
    include Edmunds::Request
    def perform
      api_call('/path')
    end
  end

  before do
    body = JSON.generate({key: 'value'})
    stub_request(:get, /.*\/api.edmunds.com.*/).to_return(status: 200, body: body)
  end

  it 'has headers' do
    Api.new.perform
    expect(WebMock).to have_requested(:get, /.*\/api.edmunds.com.*/).with(headers: {
      'User-Agent' => 'EdmundsApi ruby client',
      'Accept' => 'application/json'
    })
  end

  it 'adds required parameters' do
    Api.new.perform
    expect(WebMock).to have_requested(:get, /.*\/api.edmunds.com.*/).with(query: {
      fmt: 'json',
      api_key: 'test'
    })
  end

  it 'parses json' do
    hash = Api.new.perform
    expect(hash.keys).to include 'key'
    expect(hash.values).to include 'value'
  end

end
