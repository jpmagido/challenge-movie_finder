require 'json'

module ApiConnector
  class Base
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
  end
end