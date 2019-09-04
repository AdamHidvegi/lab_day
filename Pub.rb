class Pub

  attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def increase_till(drink)
      @till += drink.price()
  end

  def drinks_count()
    return @drinks.length()
  end

  def remove_drink(drink)
    @drinks.delete(drink)
  end

  def check_age(customer)
    if customer.age() >= 18
      return true
    else
      false
    end
  end



end
