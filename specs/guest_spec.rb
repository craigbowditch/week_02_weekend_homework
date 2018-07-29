require 'minitest/autorun'
require 'minitest/rg'

require_relative '../guest'
require_relative '../room'

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Craig", 50, "Pina Colada")

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

  def test_has_favourite_song()
    assert_equal("Pina Colada", @guest.favourite_song())
  end

end
