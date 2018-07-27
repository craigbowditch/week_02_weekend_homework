class Room

attr_reader :room_name, :capacity


  def initialize(room_name, capacity)
    @room_name = room_name
    @number_of_guests = []
    @songs = []
    @capacity = capacity
  end

  def guest_count()
    return @number_of_guests.count()
  end

  def add_guest_to_room(guest)
    if !reached_capacity()
    @number_of_guests.push(guest)
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


end
