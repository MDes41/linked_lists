require 'minitest/autorun'
require 'minitest/pride'
require_relative 'list'

class JungleBeat < Minitest::Test

  def test_initialize_beats
    jb = JungleBeat.new("beep bep bep beep")

    assert_equal "beep bep bep beep", jb.all
  end
end
