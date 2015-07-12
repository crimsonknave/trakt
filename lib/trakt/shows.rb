module Trakt
  class Shows < Cot::Collection
    BASE_URL = '/shows'
    collected_class Show

    extend PopularMethod

    def self.trending(limit: 10, page: 1)
      collected_class TrendingShow
      client = Trakt::Client.new
      resp = client.get "#{BASE_URL}/trending", limit: limit, page: page

      fail BadResponse, "Got status #{resp.status}, expected 200" unless resp.status == 200
      self.new resp.body
    end
  end
end
