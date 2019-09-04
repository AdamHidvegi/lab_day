require("minitest/autorun")
require("minitest/rg")
require_relative("../Customer.rb")
require_relative("../Drink.rb")
require_relative("../Pub.rb")

class CustomerTest < MiniTest::Test

  def setup()
    @customer = Customer.new("Becky", 20, 35, 0)
    @customer2 = Customer.new("Adam", 20, 23, 10)

    @drink1 = Drink.new("Beer", 2.5, 4)
    @drink2 = Drink.new("Wine", 5, 5)

    @drinks = [@drink1,@drink2]

    @pub = Pub.new("The Jolly Roger", 50, @drinks)
  end

  def test_name()
    assert_equal("Becky", @customer.name())
  end

  def test_wallet()
    assert_equal(20, @customer.wallet())
  end

  def test_decrease_wallet()
    @customer.decrease_wallet(@drink1)
    assert_equal(17.5, @customer.wallet())
  end

  def test_buy_drink()
    @customer.buy_drink(@drink1,@pub, @customer)
    assert_equal(1, @pub.drinks_count())
    assert_equal(17.5, @customer.wallet())
    assert_equal(52.5, @pub.till())
    assert_equal(nil, @customer.buy_drink(@drink1, @pub, @customer2))
  end

  def test_age()
    assert_equal(35,@customer.age())
  end

  def test_drunkenness()
    assert_equal(0, @customer.drunkenness())
  end

  def test_increase_drunkenness()
    @customer.increase_drunkenness()
    assert_equal(1, @customer.drunkenness())
  end

end
