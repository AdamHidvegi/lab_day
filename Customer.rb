class Customer

  attr_reader :name, :wallet, :age, :drunkenness

  def initialize(name,wallet,age,drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness
  end

  def decrease_wallet(drink)
    @wallet -= drink.price()
  end

  def increase_drunkenness()
    @drunkenness += 1
  end

  def buy_drink(drink,pub,customer)
    if (@drunkenness < 5) && (pub.check_age(customer))
      decrease_wallet(drink)
      pub.increase_till(drink)
      pub.remove_drink(drink)
    end
  end






end
