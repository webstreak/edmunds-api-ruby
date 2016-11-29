require 'spec_helper'
require 'edmunds/api'

RSpec.describe Edmunds::Request do

  module Edmunds
    class Api
      def perform
        api_call '/path'
      end
    end
  end

  before do
    body = JSON.generate({key: 'value'})
    stub_request(:get, /.*\/api.edmunds.com.*/).to_return(status: 200, body: body)
  end

  it 'has headers' do
    Edmunds::Api.new.perform
    expect(WebMock).to have_requested(:get, /.*\/api.edmunds.com.*/).with(headers: {
      'User-Agent' => 'EdmundsApi ruby client',
      'Accept' => 'application/json'
    })
  end

  it 'adds required parameters' do
    Edmunds::Api.new(view: 'full').perform
    expect(WebMock).to have_requested(:get, /.*\/api.edmunds.com.*/).with(query: {
      fmt: 'json',
      api_key: 'test',
      view: 'full'
    })
  end

  it 'adds users params' do
    Edmunds::Api.new.perform
    expect(WebMock).to have_requested(:get, /.*\/api.edmunds.com.*/).with(query: {
      fmt: 'json',
      api_key: 'test'
    })
  end

  it 'parses json' do
    hash = Edmunds::Api.new.perform
    expect(hash.keys).to include 'key'
    expect(hash.values).to include 'value'
  end

  it 'raises error if code is not 200' do
    body = JSON.generate({error: 'error message'})
    stub_request(:get, /.*\/api.edmunds.com.*/).to_return(status: 404, body: body)
    expect { Edmunds::Api.new.perform }.to raise_error(Edmunds::Error::NotFound)
  end

end
