require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Bobby")
    @fish3 = Fish.new("John")
  end

  def test_check_name()
    assert_equal("Nemo", @fish.name)
  end

end
