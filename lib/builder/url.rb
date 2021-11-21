# frozen_string_literal: true

module Builder
  # Build string url
  class Url
    BASE_URL = 'https://api.themoviedb.org/3'

    def self.languages_url
      "#{BASE_URL}/configuration/languages"
    end

    def initialize(params:, language: 'en')
      @language = language
      @params = params
      validate_params
    end

    def complete_url
      "#{BASE_URL}#{Builder::Query.new(@params)}#{language_param}"
    end

    private

    def validate_params
      return if @params.is_a? String

      raise StandardError, 'params must be string'
    end

    def language_param
      "&language=#{@language}"
    end
  end
end
