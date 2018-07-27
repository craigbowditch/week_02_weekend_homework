class Room

attr_reader :room_number


  def initialize(room_number)
    @room_number = room_number
    @number_of_guests = []
    @songs = []
  end

  def guest_count()
    return @number_of_guests.count()
  end

  def add_guest_to_room(guest)
    @number_of_guests.push(guest)
  end

  def song_count()
    return @songs.count()
  end

  def add_song_to_room(song)
    @songs.push(song)
  end


end
