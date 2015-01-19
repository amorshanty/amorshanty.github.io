class Tablero
	def items
	end
end

class Pawn #Peon
	def initialize(color, position_x, position_y)
		@color = color
		@position_x = position_x
		@position_y = position_y
	end

	def check_movement(destino_x, destino_y)
		@color.blanco (destino_x < 8 && destino_y < 8) &&  (@position_x = 2, destino_y =  )
		@color.negro 
	end
end

class Knight #Caballo
	def initialize(color, position_x, position_y)
		@color = color
		@position_x = position_x
		@position_y = position_y
	end

	def check_movement(destino_x, destino_y)
		destino_x < 8 && destino_y < 8
	end
end

class Bishop #Alfil
	def initialize(color, position_x, position_y)
		@color = color
		@position_x = position_x
		@position_y = position_y
	end

	def check_movement(destino_x, destino_y)
		destino_x < 8 && destino_y < 8
		
	end
end

class Rook #Torre
	def initialize(color, position_x, position_y)
		@color = color
		@position_x = position_x
		@position_y = position_y
	end

	def check_movement(destino_x, destino_y)
		(destino_x < 8 && destino_y < 8) && ((@position_x == destino_x) || (@position_y == destino_y))
	end
end

class Queen #Reina
	def initialize(color, position_x, position_y)
		@color = color
		@position_x = position_x
		@position_y = position_y
	end

	def check_movement(destino_x, destino_y)
		destino_x < 8 && destino_y < 8
	end
end

class King #Rey
	def initialize(color, position_x, position_y)
		@color = color
		@position_x = position_x
		@position_y = position_y
	end

	def check_movement(destino_x, destino_y)
		destino_x < 8 && destino_y < 8
	end
end

p Rook.new('b',1,1).check_movement(20, 2)  # false
p Rook.new('b',1,1).check_movement(2, 20)  # false
p Rook.new('b',1,1).check_movement(1, 2)  # true
p Rook.new('b',1,1).check_movement(2, 2)  # false