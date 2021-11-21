require_relative 'api_connector/v1'
require_relative 'api_connector/v2'
require_relative 'builder/url'

class Client
  def self.languages
    ApiConnector::V2.new(Builder::Url.languages).parsed_body
  end
end
