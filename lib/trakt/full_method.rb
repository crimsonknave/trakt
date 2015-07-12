module Trakt
  module FullMethod
    def full(cached = true)
      return self if @full && cached
      client = Trakt::Client.new
      resp = client.get "#{self.class::BASE_URL}/#{ids.trakt}?extended=full"

      fail BadResponse, "Got status #{resp.status}, expected 200" unless resp.status == 200
      @full = true
      @data.merge!(resp.body)
    end
  end
end

