module Trakt
  class Movies < Cot::Collection
    BASE_URL = '/movies'
    collected_class Movie

    extend PopularMethod
    extend TrendingMethod

  end
end
