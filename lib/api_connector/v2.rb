require 'dotenv/load'
require 'net/http'

module ApiConnector
  # Connector to TMDB API
  class V2
    def process
      Net::HTTP.get_response(uri)
    end

    private

    def uri
      URI "https://api.themoviedb.org/3/movie/76341?api_key=#{ENV['API_KEY_V3']}"
    end
  end
end
