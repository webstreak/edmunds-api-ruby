require 'spec_helper'

RSpec.describe Edmunds::Vehicle::Grades do

  let!(:api) { Edmunds::Api.new.vehicles.grades }

  context '#by_style_id' do
    include_examples 'make request to api', /.*\/vehicle.+\/styles\/style_id\/grade/, :by_style_id, 'style_id'
  end

  context '#details' do
    include_examples 'make request to api', /.*\/vehicle.+\/make\/model\/year\/grade/, :details, 'make', 'model', 'year'
  end

  context '#rating' do
    include_examples 'make request to api', /.*\/vehicle.+\/grade\/make\/model\/year/, :rating, 'make', 'model', 'year'
  end

  context '#by_review_id' do
    include_examples 'make request to api', /.*\/vehicle.+\/make\/model\/year\/grade\/review_id/, :by_review_id, 'make', 'model', 'year', 'review_id'
  end

end
