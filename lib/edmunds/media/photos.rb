module Edmunds
  module Media
    module Photos

      def by_year_make_model(year, make, model, options={})
        send_request "/#{make}/#{model}/#{year}/photos"
      end

      def by_tag(tag, options={})
        options = {tag: tag}.merge(options)
        send_request '/photoset', options
      end

      def by_style_id(style_id, options={})
        send_request "/styles/#{style_id}/photos", options
      end

      def by_make_model(make, model, options={})
        send_request "/#{make}/#{model}/photos", options
      end

    end
  end
end
