require 'spec_helper'

RSpec.describe Edmunds::Media::Photos do

  let!(:api) { Edmunds::Api.new.media.photos }

  context '#by_year_make_model' do
    include_examples 'make request to api', /.*\/media.+\/make\/model\/year\/photos/, :by_year_make_model, 'year', 'make', 'model'
  end

  context '#by_tag' do
    include_examples 'make request to api', /.*\/media.+\/photoset/, :by_tag, 'tag'
  end

  context '#by_style_id' do
    include_examples 'make request to api', /.*\/media.+\/styles\/style_id\/photos/, :by_style_id, 'style_id'
  end

  context '#by_make_model' do
    include_examples 'make request to api', /.*\/media.+\/make\/model\/photos/, :by_make_model, 'make', 'model'
  end

end
