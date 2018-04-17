require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bears.rb')

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon", ["Nemo", "Bobby", "John"])
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Bobby")
    @fish3 = Fish.new("John")
  end

  def test_get_name()
    assert_equal("Amazon", @river.name)
  end

  def test_number_of_fish()
    assert_equal(3, @river.number_of_fish)
  end

  def test_remove_fish()
    lose_fish = @river.remove_fish("Nemo")
    assert_equal(2, @river.number_of_fish)
  end

end
