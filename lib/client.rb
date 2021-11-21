# frozen_string_literal: true

require_relative 'api_connector/v1'
require_relative 'api_connector/v2'
require_relative 'builder/url'

# Public methods for Gem User
class Client
  def self.supported_languages
    ApiConnector::V2.new(Builder::Url.languages_url).parsed_body
  end

  def self.base_url
    Builder::Url::BASE_URL
  end
end
