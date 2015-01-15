require "pp"
require "pry"

class ShoppingCart
  def initialize
    @cart = []
  end
  def add(item)
  	@cart.push item
  end
  def total
  	price = 0
  	@cart.each do |item|
  		binding.pry
  		price = price + items[ item ]
  	end
  	price
  end
	def items
			{:apples  => 10,
       :oranges => 5,
			 :grapes  => 15,
			 :banana  => 20,
			 :watermelon => 50}		
	end
end

cart = ShoppingCart.new
cart.add(:apples)
cart.add(:banana)
pp cart.total