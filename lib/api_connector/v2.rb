require 'dotenv/load'
require 'net/http'
require 'json'

module ApiConnector
  # Connector to TMDB API V3
  class V2

    def initialize(url)
      @url = url
    end

    def body
      response.body
    end

    def header
      response.header
    end

    def parsed_body
      JSON.parse response.body
    end

    private

    def response
      @response ||= Net::HTTP.get_response(uri)
    end

    def uri
      URI(@url + "?api_key=#{ENV['API_KEY_V3']}")
    end
  end
end
