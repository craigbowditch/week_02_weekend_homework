require 'minitest/autorun'
require 'minitest/rg'

require_relative '../guest'


class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Craig")
  end

  def test_has_name()
    assert_equal("Craig", @guest.name )
  end



end
