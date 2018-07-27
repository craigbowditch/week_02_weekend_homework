require 'minitest/autorun'
require 'minitest/rg'

require_relative '../song.rb'


class SongTest < MiniTest::Test

  def setup

    @song = Song.new("Pina Colada")

  end


  def test_song_has_name()
    assert_equal("Pina Colada", @song.name)

  end







end
