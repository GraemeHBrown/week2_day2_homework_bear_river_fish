require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class TestRiver < MiniTest::Test

  def setup
    @carp = Fish.new('Carp')
    @trout = Fish.new('Trout')
    @perch = Fish.new('Perch')
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
  fish_to_add = @perch
  @hudson.add_fish(fish_to_add)
  assert_equal(true, @hudson.fish().include?(fish_to_add))
end

def test_remove_fish__removes_fish()
  fish_to_remove = @carp
  @hudson.remove_fish(fish_to_remove)
  assert_equal(false, @hudson.fish().include?(fish_to_remove))
  assert_equal(true, @hudson.fish().include?(@trout))
end

def test_remove_fish__reduces_fish_count()
  fish_count_before = @hudson.fish.count()
  fish_to_remove = @carp
  @hudson.remove_fish(fish_to_remove)
  fish_count_after = @hudson.fish.count()
  assert_equal(fish_count_before-1, fish_count_after)
end

end
