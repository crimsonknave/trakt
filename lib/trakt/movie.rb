module Trakt
  class Movie < Cot::Frame
    property :title
    property :year
    property :ids do
      value do |params|
        Ids.new params
      end
    end

    # These are in the full view
    property :tagline
    property :overview
    property :released
    property :runtime
    property :updated_at
    property :trailer
    property :homepage
    property :rating
    property :votes
    property :language
    property :available_translations
    property :genres
    property :certification

    BASE_URL = '/movies'
    include RelatedMethod
    include StatsMethod
    include RatingsMethod
    include WatchingMethod
    include FullMethod
  end
end
