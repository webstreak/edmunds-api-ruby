require 'spec_helper'

RSpec.describe Edmunds::Vehicle::Styles do

  let!(:api) { Edmunds::Api.new.vehicles.styles }

  context '#count' do
    include_examples 'make request to api', /.*\/vehicle.+\/styles\/count.*/, :count
  end

  context '#make_model_year_count' do
    include_examples 'make request to api', /.*\/vehicle.+\/ford\/focus\/2016\/styles\/count.*/, :make_model_year_count, 'ford', 'focus', '2016'
  end

  context '#make_count' do
    include_examples 'make request to api', /.*\/vehicle.+\/ford\/styles\/count.*/, :make_count, 'ford'
  end

  context '#make_model_count' do
    include_examples 'make request to api', /.*\/vehicle.+\/ford\/focus\/styles\/count.*/, :make_model_count, 'ford', 'focus'
  end

  context '#id' do
    include_examples 'make request to api', /.*\/vehicle.+\/styles\/style_id.*/, :id, 'style_id'
  end

  context '#make_model_year' do
    include_examples 'make request to api', /.*\/vehicle.+\/ford\/focus\/2016\/styles.*/, :make_model_year, 'ford', 'focus', '2016'
  end

  context '#chrome_data' do
    include_examples 'make request to api', /.*\/vehicle.+\/partners\/chrome\/styles\/chrome_id.*/, :chrome_data, 'chrome_id'
  end

end
