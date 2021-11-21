# frozen_string_literal: true

require 'json'

module ApiConnector
  # Public methods to connect to TMDB API
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
