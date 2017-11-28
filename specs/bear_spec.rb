require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')
require_relative('../bear')


class TestBear < MiniTest::Test

  def setup
      @bear = Bear.new('Yogi')
  end

  def test_get_name()
    expected = 'Yogi'
    assert_equal(expected, @bear.name())
  end

end
