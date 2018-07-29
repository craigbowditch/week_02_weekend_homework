class Guest

attr_reader :name, :money

  def initialize(name, money)

    @name = name
    @money = money


  end

  def pay_entry(fee)
    @money -= fee
  end

end
