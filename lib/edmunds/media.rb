module Edmunds

  module Media
    def send_request(path, options={})
      api_call 'media', path, options
    end
  end

  class Api
    def photos
      self.extend Edmunds::Media::Photos
    end
  end

end
