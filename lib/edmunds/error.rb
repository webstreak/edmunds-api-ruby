module Edmunds
  class Error < StandardError

    BadRequest = Class.new self
    Unauthorized = Class.new self
    Forbidden = Class.new self
    NotFound = Class.new self
    InternalServerError = Class.new self
    BadGateway = Class.new self
    ServiceUnavailable = Class.new self
    GatewayTimeout = Class.new self

    ERRORS = {
      400 => Edmunds::Error::BadRequest,
      401 => Edmunds::Error::Unauthorized,
      403 => Edmunds::Error::Forbidden,
      404 => Edmunds::Error::NotFound,
      500 => Edmunds::Error::InternalServerError,
      502 => Edmunds::Error::BadGateway,
      503 => Edmunds::Error::ServiceUnavailable,
      504 => Edmunds::Error::GatewayTimeout
    }.freeze


    def self.from_response(code, body)
      message = "http code: #{code}. "
      if body['error']
        message << "Http message: #{body['error']}"
      else
        message = 'No message in http body'
      end
      new message
    end

    def initialize(message)
      super message
    end

  end
end
