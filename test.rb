require 'trakt'

#things = Trakt::Shows.popular.first.watching
#things = Trakt::Shows.trending
things = Trakt::Movies.trending limit: 20
#things = Trakt::Movies.popular limit: 20
things.each do |thing|
  puts thing.full.inspect
  puts thing.related.inspect
  puts '-----'
  puts thing.inspect
  puts thing.ids.inspect
  puts thing.ids.trakt.inspect
end
