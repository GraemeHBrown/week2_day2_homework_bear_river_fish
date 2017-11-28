require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

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

def test_add_fish()
  fish_to_add = 'Perch'
  @hudson.add_fish(fish_to_add)
  assert_equal(true, @hudson.fish().include?(fish_to_add))
end

end
