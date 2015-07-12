module Trakt
  module StatsMethod
    def self.included(mod)
      mod.add_method :stats
    end

    def stats(cached = true)
      return @stats if @stats && cached
      client = Trakt::Client.new
      resp = client.get "#{self.class::BASE_URL}/#{ids.trakt}/stats"

      fail BadResponse, "Got status #{resp.status}, expected 200" unless resp.status == 200
      @cached = Stats.new resp.body
    end
  end
end
