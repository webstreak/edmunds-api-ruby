$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'simplecov'
require 'coveralls'

SimpleCov.formatters = [SimpleCov::Formatter::HTMLFormatter, Coveralls::SimpleCov::Formatter]

require 'edmunds_api'

# add api_key
Edmunds.configure do |config|
  config.api_key = 'api_key'
end

# disable all remote connections
require 'webmock/rspec'
WebMock.disable_net_connect!(allow: 'coveralls.io')

# load shared examples
Dir["./spec/shared_examples/**/*.rb"].each { |f| require f }
