require_relative('../rooms.rb')
require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')
require_relative('../songs.rb')

class TestRoom < MiniTest::Test
  def setup
    @room = Room.new("Suite")
    @guest = Guest.new("Gary")
    @song = Song.new("Train Journey", "ScotRail")
  end

  def test_room_starts_with_no_guests()
      result = @room.number_of_guests()
      assert_equal(0, result)
    end

    def test_room_can_check_in_guest()
      @room.check_in_guest(@guest)
      result = @room.number_of_guests()
      assert_equal(1, result)
    end

    def test_room_can_check_out_guest()
      @room.check_out_guest(@guest)
      result = @room.number_of_guests()
      assert_equal(0, result)
    end

    def test_room_starts_with_no_songs()
        result = @room.number_of_songs()
        assert_equal(0, result)
      end

      def test_room_insert_song()
        @room.insert_song(@song)
        result = @room.number_of_songs()
        assert_equal(1, result)
      end

      def test_room_eject_song()
        @room.eject_song(@song)
        result = @room.number_of_songs()
        assert_equal(0, result)
      end

end
