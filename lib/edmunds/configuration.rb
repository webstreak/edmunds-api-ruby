module Edmunds

  include Configurations

  not_configured :api_key do |prop|
    raise NoMethodError, "#{prop} must be configured"
  end

  configuration_defaults do |c|
    c.request_params.fmt = 'json'
    c.api_version = 2
  end

end
