module Trakt
  class Movies < Cot::Collection
    BASE_URL = '/movies'

    def self.trending(limit: 10, page: 1)
      collected_class TrendingMovie
      client = Trakt::Client.new
      resp = client.get "#{BASE_URL}/trending", limit: limit, page: page

      fail BadResponse, "Got status #{resp.status}, expected 200" unless resp.status == 200
      self.new resp.body
    end

    def self.popular(limit: 10, page: 1)
      collected_class Movie
      client = Trakt::Client.new
      resp = client.get "#{BASE_URL}/popular?genre=action", limit: limit, page: page

      fail BadResponse, "Got status #{resp.status}, expected 200" unless resp.status == 200
      puts resp.body[1].inspect
      self.new resp.body
    end
  end
end
