module Trakt
  class Stats < Cot::Frame
    property :watchers
    property :plays
    property :collectors
    property :collected_episodes
    property :comments
    property :lists
    property :votes
  end
end
