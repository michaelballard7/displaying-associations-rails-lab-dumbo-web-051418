class Artist < ActiveRecord::Base
  has_many :songs


  def song_count
    # self.songs.count
     Song.all.collect {|s| s.title if s.artist == self}.count
  end
end
