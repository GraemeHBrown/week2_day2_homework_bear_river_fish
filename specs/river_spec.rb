require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class TestRiver < MiniTest::Test

  def setup
    @carp = Fish.new('Carp')
    @trout = Fish.new('Trout')
    fish = [@carp, @trout]
    @hudson = River.new('Hudson', fish)
  end

def test_get_name()
  expected = 'Hudson'
  assert_equal(expected, @hudson.name())
end

def test_get_fish()
  expected = [@carp, @trout]
  assert_equal(expected, @hudson.fish())
end

def test_add_fish()
  fish_to_add = 'Perch'
  @hudson.add_fish(fish_to_add)
  assert_equal(true, @hudson.fish().include?(fish_to_add))
end

#need remove fish method

end
