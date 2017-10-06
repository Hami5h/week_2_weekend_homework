require_relative('guests.rb')
require_relative('songs.rb')

class Room

  def initialize(name)
    @name = name
    @guest = []
    @song = []
  end

  def number_of_guests()
    return @guest.length()
  end

  def check_in_guest(new_guest)
    @guest.push(new_guest)
  end

  def check_out_guest(old_guest)
    @guest.pop()
  end

  def number_of_songs()
    return @song.length()
  end

  def insert_song(new_song)
    @song.push(new_song)
  end

  def eject_song(old_song)
    @song.pop()
  end

end
