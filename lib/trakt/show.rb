module Trakt
  class Show < Cot::Frame
    property :title
    property :year
    property :ids do
      value do |params|
        Ids.new params
      end
    end

    # These are in the full view
    property :overview
    property :first_aired
    # TODO: flesh out the details of airs
    property :airs
    property :runtime
    property :certification
    property :network
    property :country
    property :updated_at
    property :trailer
    property :homepage
    property :status
    property :rating
    property :votes
    property :language
    property :available_translations
    property :genres
    property :aired_episodes

    BASE_URL = '/shows'
    include RelatedMethod
    include StatsMethod
    include RatingsMethod
    include WatchingMethod
    include FullMethod
  end
end
