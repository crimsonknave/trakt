module Trakt
  class BadResponse; end

  # TODO: remove this when this is, you know, an acutal gem
  $LOAD_PATH.push File.expand_path('..', __FILE__)

  require 'cot'

  require 'trakt/ids'
  require 'trakt/stats'
  require 'trakt/ratings'
  require 'trakt/user'
  require 'trakt/users'

  require 'trakt/related_method'
  require 'trakt/stats_method'
  require 'trakt/ratings_method'
  require 'trakt/watching_method'
  require 'trakt/full_method'

  require 'trakt/movie'
  require 'trakt/show'
  require 'trakt/trending'
  require 'trakt/trending_movie'
  require 'trakt/trending_show'

  require 'trakt/movies'
  require 'trakt/shows'
  require 'trakt/client'
end
