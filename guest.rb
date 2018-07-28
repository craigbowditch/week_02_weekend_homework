class Guest

attr_reader :name, :money

  def initialize(name, money)

    @name = name
    @money = money


  end

  def pay_entry(room)
    @money -= room.entry_fee()
  end


end
