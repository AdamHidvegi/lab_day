require("minitest/autorun")
require("minitest/rg")
require_relative("../Drink.rb")
require_relative("../Pub.rb")

class DrinkTest < MiniTest::Test

  def setup()
    @drink1 = Drink.new("Beer", 2.5, 4)
    @drink2 = Drink.new("Wine", 5, 5)

    @drinks = [@drink1,@drink2]
  end


  def test_name()
    assert_equal("Beer", @drink1.name())
  end

  def test_price()
    assert_equal(2.5, @drink1.price())
  end

  def test_alcohol_level()
    assert_equal(4, @drink1.alcohol_level())
  end

end
