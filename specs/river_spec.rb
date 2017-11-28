require('minitest/autorun')
require('minitest/rg')
require_relative('../river')

class TestRiver < MiniTest::Test

  def setup
    fish = ['Carp', 'Trout']
    @hudson = River.new('Hudson', fish)
  end

def test_get_name()
  expected = 'Hudson'
  assert_equal(expected, @hudson.name())
end

def test_get_fish()
  expected = ['Carp', 'Trout']
  assert_equal(expected, @hudson.fish())
end

end
