require 'minitest/autorun'
require 'minitest/rg'

require_relative '../guest'
require_relative '../room'

class GuestTest < MiniTest::Test

  def setup
    @room = Room.new("Room 1", 10, 5)
    @guest = Guest.new("Craig", 50)

  end

  def test_has_name()
    assert_equal("Craig", @guest.name )
  end

  def test_has_money()
    assert_equal(50, @guest.money)
  end

  def test_pay_entry_fee()
    @guest.pay_entry(5)
    assert_equal(45, @guest.money)
  end



end
