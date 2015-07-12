require 'faraday'
require 'faraday_middleware'
require 'delegate'
module Trakt
  class Client < SimpleDelegator
    def initialize
      @client = Faraday.new(url: 'https://api-v2launch.trakt.tv') do |faraday|
        faraday.headers['Content-Type'] = 'application/json'
        faraday.headers['trakt-api-key'] = ENV['TRAKT_CLIENT_ID']
        faraday.headers['trakt-api-version'] = '2'
        faraday.response :json, content_type: 'application/json'
        faraday.adapter Faraday.default_adapter
      end
      super @client
    end
  end
end
