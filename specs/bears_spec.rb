require('minitest/autorun')
require('minitest/rg')
require_relative('../bears.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearClass < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Bobby")
    @fish3 = Fish.new("John")
    @river = River.new("Amazon", ["Nemo", "Bobby", "John"])
  end

  def test_check_name
    assert_equal("Yogi", @bear.name())
  end

  def test_bear_stomach()
    assert_equal(0, @bear.bear_stomach)
  end

  def test_take_fish_from_river__add
    add_to_stomach = @bear.add_fish("Nemo")
    assert_equal(1, @bear.bear_stomach())
  end

  def test_take_fish_from_river__remove
    remove_from_river = @river.remove_fish("Nemo")
    assert_equal(2, @river.number_of_fish)
  end

  # def test_take_fish_from_river__add
  #   add_to_stomach = @river.remove_fish("Nemo")
  #   assert_equal(1, @bear.bear_stomach()
  # end

  def test_bear_roars()
    assert_equal("Rooaaaar", @bear.roar)
  end




end
