module Trakt
  module PopularMethod
    def popular(limit: 10, page: 1)
      client = Trakt::Client.new
      resp = client.get "#{self::BASE_URL}/popular", limit: limit, page: page

      fail BadResponse, "Got status #{resp.status}, expected 200" unless resp.status == 200
      self.new resp.body
    end
  end
end
