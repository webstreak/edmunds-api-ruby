$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'edmunds'

# add api_key
Edmunds.configure do |c|
  c.api_key = 'test'
end

# disable all remote connections
require 'webmock/rspec'
WebMock.disable_net_connect!(allow_localhost: true)

# load shared examples
Dir["./spec/shared_examples/**/*.rb"].each { |f| require f }
