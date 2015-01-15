# [ "carrots","apples","oranges"].each go |item|
# 	puts item
# end

class Car
	def initialize(noise)
		@noise = noise
	end
	def make_noise
		@noise
	end

		
	end

cars = []
sounds = ["Broom","Meek","Nyan"]
sounds.each do |sounds|
	cars << Car.new(sounds)
end

puts cars


cars = ["Broom","Meek","Nyan"].map do |sound|
	Car.new(sound)
 
end

dict = {}
[["a",1],["b",2],["c",3]].each do |item|
 key = item[0].to_sym
 dict[key] = item[1]
end
dict

dict = [["a",1],["b",2],["c",3]].each_with_object({}) do |item, memo|
 memo[item[0].to_sym] = item[1]
end

dict = sounds.each_with_object ({}) do |sound, memo|
end





