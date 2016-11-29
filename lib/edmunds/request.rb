module Edmunds
  module Request

    API_URL = 'https://api.edmunds.com/api'

    def api_call(api_path, path)
      url = build_api_url api_path, path
      request_params = merge_required_params
      response = HTTP.headers(http_headers).get(url, params: request_params)
      parse_response response
    end

    def build_api_url(api_path, path)
      api_version = 'v' + Edmunds.configuration.api_version.to_s
      API_URL + '/' + api_path + '/' + api_version + path
    end

    def merge_required_params
      params = {
        api_key: Edmunds.configuration.api_key,
        fmt: Edmunds.configuration.request_params.fmt
      }
      if @request_user_params
        params.merge(@request_user_params)
      else
        params
      end
    end

    def http_headers
      {
        'User-Agent' => 'EdmundsApi ruby client',
        'Accept' => 'application/json'
      }
    end

    def parse_response(response)
      begin
        body = JSON.parse response.body
      rescue
        body = {}
      end

      if response.code == 200
        body
      else
        raise_error response.code, body
      end
    end

    def raise_error(code, body)
      klass = Edmunds::Error::ERRORS[code]
      raise klass.from_response code, body
    end

  end
end
