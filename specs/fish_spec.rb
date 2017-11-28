require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class TestFish < MiniTest::Test

  def setup
      @trout = Fish.new('Trout')
  end

  def test_get_name()
    expected = 'Trout'
    assert_equal(expected, @trout.name())
  end

end
