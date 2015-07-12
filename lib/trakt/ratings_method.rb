module Trakt
  module RatingsMethod
    def ratings(cached = true)
      return @ratings if @ratings && cached
      client = Trakt::Client.new
      resp = client.get "#{self.class::BASE_URL}/#{ids.trakt}/ratings"

      fail BadResponse, "Got status #{resp.status}, expected 200" unless resp.status == 200
      @ratings = Ratings.new resp.body
    end
  end
end
