require 'spec_helper'

RSpec.describe Edmunds::Error do

  let(:api_error) { Edmunds::Error::BadRequest }

  it 'handles message from http body' do
    error = api_error.from_response(400, {'error'=>'Bad request'})
    expect { raise error }.to raise_error(Edmunds::Error::BadRequest, /Bad request/)
  end

  it 'no message in http body' do
    error = api_error.from_response(400, {})
    expect { raise error }.to raise_error(Edmunds::Error::BadRequest, /No message/)
  end

end
