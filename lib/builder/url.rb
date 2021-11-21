module Builder
  class Url
    def self.languages
      BASE_URL + '/configuration/languages'
    end

    def initialize(language:)
      @language = language
    end

    def complete_url
      # BASE_URL + Builder::Query.new
    end

    private

    BASE_URL = 'https://api.themoviedb.org/3'
  end
end
