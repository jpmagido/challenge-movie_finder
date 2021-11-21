module Builder
  class Url
    def self.languages
      BASE_URL + '/configuration/languages'
    end

    def initialize(language: 'en', params:)
      @language = language
      @params = params
    end

    def complete_url
      BASE_URL + Builder::Query.new(@params).to_s + language_param
    end

    private

    def language_param
      "&language=#{@language}"
    end

    BASE_URL = 'https://api.themoviedb.org/3'
  end
end
