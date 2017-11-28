require('minitest/autorun')
require('minitest/rg')
require_relative('../river')

class TestRiver < MiniTest::Test

  def setup
    fish = []
    @hudson = River.new('Hudson', fish)
  end

def test_get_name()
  expected = 'Hudson'
  assert_equal(expected, @hudson.name())
end

end
