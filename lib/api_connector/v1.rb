require 'dotenv/load'
require 'net/http'

require_relative 'base'

module ApiConnector
  # Connector to TMDB API V4
  class V1 < Base
    private

    def response
      @response ||= Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
        req = Net::HTTP::Get.new(uri)
        req['Authorization'] = "Bearer #{ENV['API_KEY_V4']}"
        req['Content-Type'] = 'application/json;charset=utf-8'

        http.request(req)
      end
    end

    def uri
      URI @url
    end
  end
end
