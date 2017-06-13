module Edmunds
  module Request

    API_URL = 'https://api.edmunds.com/api'
    API_VERSION = Edmunds.configuration.api_version.to_s
    DEFAULT_TIMEOUT = 15

    def api_call(api_path, path, options={})
      url = build_api_url api_path, path
      request_params = merge_required_params options
      raise 'No api_key found' if request_params[:api_key].empty?
      response = HTTP.timeout(*timeout).headers(http_headers).get(url, params: request_params)
      parse_response response
    end

    private

    def build_api_url(api_path, path)
      api_version = 'v' + API_VERSION
      API_URL + '/' + api_path + '/' + api_version + path
    end

    def merge_required_params(options)
      {
        api_key: Edmunds.configuration.api_key.to_s.strip,
        fmt: Edmunds.configuration.request_params.fmt
      }.merge(options)
    end

    def http_headers
      {
        'User-Agent' => 'EdmundsApi ruby client',
        'Accept' => 'application/json'
      }
    end

    def timeout
      timeout = Edmunds.configuration.timeout || DEFAULT_TIMEOUT
      [:global, connect: timeout]
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
      if klass.nil?
        klass = Edmunds::Error::Unknown
      end
      raise klass.from_response code, body
    end

  end
end
