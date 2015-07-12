module Trakt
  module RelatedMethod
    def related
      client = Trakt::Client.new
      resp = client.get "#{self.class::BASE_URL}/#{ids.trakt}/related"

      fail BadResponse, "Got status #{resp.status}, expected 200" unless resp.status == 200
      klass = self.class.to_s.pluralize
      klass.constantize.new resp.body
    end
  end
end
