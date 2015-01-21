class ShoppingCart
  def initialize
    @cart = []
  end

  def add(item)
  	@cart.push item
  end
  
  def pay
  	acumulador = 0
  	@cart.each do |element|
  		acumulador = element.price + acumulador 
  	end
  	acumulador
  end

  def empty
  	@cart = []
  end
end


class Item
  attr_accessor :price, :name

	def initialize(price,name)
		@name = name
		@price = price
	end
end