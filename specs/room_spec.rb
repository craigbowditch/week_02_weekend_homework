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

    @guest1 = Guest.new("Craig", 50, "Pina Colada")
    @guest2 = Guest.new("Dave", 3, "Heartbreaker")

    @room1 = Room.new("Room 1", 10, 5)
    @room2 = Room.new("Room 2", 1, 4)

  end

  def test_room_has_number()
    assert_equal("Room 1", @room1.room_name())
  end

  def test_room_has_capacity()
    assert_equal(1, @room2.capacity())
  end

  def test_room_has_entry_fee()
    assert_equal(5, @room1.entry_fee())
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

  def test_room_has_reached_capacity()
    @room2.add_guest_to_room(@guest1)
    @room2.add_guest_to_room(@guest2)
    result = @room2.reached_capacity()
    assert_equal(true, result)
  end

  def test_room_is_not_full()
    @room1.add_guest_to_room(@guest1)
    result = @room1.reached_capacity()
    assert_equal(false, result)
  end

  def test_guest_has_insufficient_funds()
    result = @room1.check_guest_money(@guest2)
    assert_equal(true, result)
  end

  def test_guest_has_sufficient_funds()
    result = @room1.check_guest_money(@guest1)
    assert_equal(false, result)
  end

  def test_check_in_guest_pays_entry_fee()
    @room1.check_in_guest(@guest1)
    assert_equal(45, @guest1.money)
  end

  def test_favourite_song_in_playlist()
    @room1.add_song_to_room(@song1)
    @room1.add_song_to_room(@song2)
    result = @room1.check_favourite_song_in_playlist(@guest1)
    assert_equal("What a banger!", result)
  end

  def test_favourite_song_not_in_playlist()
    @room1.add_guest_to_room(@guest1)
    @room1.add_song_to_room(@song2)
    @room1.add_song_to_room(@song3)
    result = @room1.check_favourite_song_in_playlist(@guest1)
    assert_equal("Hang the DJ!", result)
  end
end
