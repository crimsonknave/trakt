module Trakt
  module TrendingMethod
    def trending(limit: 10, page: 1)
      klass_list = klass.to_s.split('::')
      modified_klass = "#{klass_list[0..-2].join '::'}::Trending#{klass_list[-1]}"
      collected_class modified_klass.constantize
      client = Trakt::Client.new
      resp = client.get "#{self::BASE_URL}/trending", limit: limit, page: page

      fail BadResponse, "Got status #{resp.status}, expected 200" unless resp.status == 200
      self.new resp.body
    end
  end
end
