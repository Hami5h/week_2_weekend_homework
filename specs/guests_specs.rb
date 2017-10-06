require_relative('../guests.rb')
require('minitest/autorun')
require('minitest/rg')

class TestGuset < MiniTest::Test
  def setup
    @guest = Guest.new("Hamish")
  end

  def test_guest_has_name()
    assert_equal("Hamish", @guest.name)
  end

end
