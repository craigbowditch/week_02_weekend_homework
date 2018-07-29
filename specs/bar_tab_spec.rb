require 'minitest/autorun'
require'minitest/rg'

require_relative '../bar_tab.rb'


class BarTabTest < MiniTest::Test

    def setup
      @bar_tab = BarTab.new()
    end

    def test_bar_tab_starts_empty()
      assert_equal(0, @bar_tab.bar_tab_total())
    end

    def test_add_to_bar_tab()
      @bar_tab.add_to_bar_tab(10)
      assert_equal(10, @bar_tab.bar_tab_total())
    end






end
