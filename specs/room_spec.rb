require 'minitest/autorun'
require 'minitest/rg'

require_relative '../room.rb'
require_relative '../song.rb'
require_relative '../guest.rb'


class RoomTest < MiniTest::Test

  def setup

    @song1 = Song.new("Pina Colada")
    @song2 = Song.new("Heartbreaker")
    @song3 = Song.new("You really got a hold on me")

    @guest1 = Guest.new("Craig")
    @guest2 = Guest.new("Dave")

    @room1 = Room.new(1)
    @room2 = Room.new(2)

  end

  def test_room_has_number()
    assert_equal(1, @room1.room_number)
  end

  def test_number_of_guests_in_room()
    assert_equal(0, @room1.guest_count())
  end

  def test_add_guest_to_room()
    @room1.add_guest_to_room(@guest1)
    assert_equal(1, @room1.guest_count())
  end

  def test_number_of_songs_in_room()
    assert_equal(0, @room2.song_count())
  end

  def test_add_song_to_room()
    @room2.add_song_to_room(@song3)
    assert_equal(1, @room2.song_count())
  end
end
