module ApiConnector
  class V1
    def process
      Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
        req = Net::HTTP::Get.new(uri)
        req['Authorization'] = "Bearer #{ENV['API_KEY_V4']}"
        req['Content-Type'] = 'application/json;charset=utf-8'

        http.request(req)
      end
    end

    private

    def uri
      URI 'https://api.themoviedb.org/3/movie/76341'
    end
  end
end
