class Room

  attr_reader :room_name, :capacity, :entry_fee


  def initialize(room_name, capacity, entry_fee)
    @room_name = room_name
    @number_of_guests = []
    @songs = []
    @capacity = capacity
    @entry_fee = entry_fee
  end

  def guest_count()
    return @number_of_guests.count()
  end

  def add_guest_to_room(guest)
    @number_of_guests.push(guest)
  end

  def check_in_guest(guest)
    if !reached_capacity() && !check_guest_money(guest)
      add_guest_to_room(guest)
      guest.pay_entry(@entry_fee)
    end
  end

  def song_count()
    return @songs.count()
  end

  def add_song_to_room(song)
    @songs.push(song)
  end

  def reached_capacity()
    if guest_count() >= @capacity
      return true
    end
    return false
  end

  def check_guest_money(guest)
    if guest.money() < @entry_fee
      return true
    end
    return false
  end



end
