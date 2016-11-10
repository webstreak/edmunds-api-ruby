module Edmunds
  module Request

    API_URL = 'https://api.edmunds.com/api'

    def api_call(path, params={})
      params = {
        api_key: Edmunds.configuration.api_key,
        fmt: Edmunds.configuration.request_params.fmt
      }.merge(params)
      response = HTTP.headers({
        'User-Agent' => 'EdmundsApi ruby client',
        'Accept' => 'application/json'
      }).get(API_URL+path, params: params)
      JSON.parse response.body
    end

  end
end
