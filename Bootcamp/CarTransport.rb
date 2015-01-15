class CarTransport	
	attr_reader :cars

	def initialize
		@cars = []
	end
	def add_car(car)
		@cars << car
	end

	def show_cars

		@cars = @cars.sort_by { |car| car.noise.length }.reverse

		 @cars.each do |car|
		 	puts car.noise + (" ") + car.color
		end
	end	
end


class Car 
	attr_reader :noise, :color

	def initialize(noise, color)
		@noise = noise
		@color = color
	end
end

my_CarTransport = CarTransport.new
my_CarTransport.add_car(Car.new("RUNNN", "verde"))
my_CarTransport.add_car(Car.new("BANG", "amarillo"))
my_CarTransport.add_car(Car.new("Hooonk", "azul"))
my_CarTransport.show_cars