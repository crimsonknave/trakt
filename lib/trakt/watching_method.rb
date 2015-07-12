module Trakt
  module WatchingMethod
    def self.included(mod)
      mod.add_method :watching
    end

    def watching(cached = true)
      return @watching if @watching && cached
      client = Trakt::Client.new
      resp = client.get "#{self.class::BASE_URL}/#{ids.trakt}/watching"

      fail BadResponse, "Got status #{resp.status}, expected 200" unless resp.status == 200
      @watching = Users.new resp.body
    end
  end
end

