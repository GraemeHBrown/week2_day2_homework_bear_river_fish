require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')
require_relative('../bear')


class TestBear < MiniTest::Test

  def setup
      @bear = Bear.new('Yogi')
      @salmon = Fish.new('Salmon')
      @rainbow_trout = Fish.new('Rainbow Trout')
      @colorado = River.new('Colorado', [@salmon, @rainbow_trout])
  end

  def test_get_name()
    expected = 'Yogi'
    assert_equal(expected, @bear.name())
  end

  def test_empty_stomach()
    expected = 0
    assert_equal(expected, @bear.stomach.size())
  end

  def test_fishing__added_to_stomach()
    fish_to_be_caught = @colorado.fish[0]
    river_being_fished = @colorado
    @bear.fishing(fish_to_be_caught, river_being_fished)
    assert_equal(true, @bear.stomach.include?(fish_to_be_caught))
  end

  def test_fishing__river_loses_fish()
    fish_to_be_caught = @colorado.fish[0]
    river_being_fished = @colorado
    @bear.fishing(fish_to_be_caught, river_being_fished)
    assert_equal(false, river_being_fished.fish.include?(fish_to_be_caught))
  end

  def test_roar()
    assert_equal('Roar!!', @bear.roar())
  end

end
