require 'dotenv/load'
require 'net/http'

require_relative 'base'

module ApiConnector
  # Connector to TMDB API V3
  class V2 < Base
    private

    def response
      @response ||= Net::HTTP.get_response(uri)
    end

    def uri
      URI(@url + "?api_key=#{ENV['API_KEY_V3']}")
    end
  end
end
