require("minitest/autorun")
require("minitest/rg")
require_relative("../Pub.rb")
require_relative("../Drink.rb")
require_relative("../Customer.rb")

class PubTest < Minitest::Test

  def setup()


    @drink1 = Drink.new("Beer", 2.5, 4)
    @drink2 = Drink.new("Wine", 5, 5)

    @drinks = [@drink1,@drink2]

    @customer = Customer.new("Becky", 20, 35, 0)
    @customer2 = Customer.new("Adam", 20, 15, 10)

    @pub = Pub.new("The Jolly Roger", 50, @drinks)

  end

  def test_name()
    assert_equal("The Jolly Roger", @pub.name())
  end

  def test_till()
    assert_equal(50,@pub.till())
  end

  def test_increase_till()
    @pub.increase_till(@drink1)
    assert_equal(52.5, @pub.till())
  end

  def test_drinks_count()
    assert_equal(2, @pub.drinks_count())
  end

  def test_remove_drink
    @pub.remove_drink(@drink1)
    assert_equal(1,@pub.drinks_count())
  end

  def test_check_age()
    @pub.check_age(@customer)
    assert_equal(true,@pub.check_age(@customer))
    assert_equal(false, @pub.check_age(@customer2))
  end


end
