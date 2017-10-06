require_relative('../songs.rb')
require('minitest/autorun')
require('minitest/rg')

class TestSong < MiniTest::Test
  def setup
    @song = Song.new("Roar", "Katy Perry")
  end

  def test_song_has_title()
    assert_equal("Roar", @song.title)
  end

  def test_song_has_artist()
    assert_equal("Katy Perry", @song.artist)
  end

end
