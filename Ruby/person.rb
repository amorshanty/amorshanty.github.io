Class Person 
	def initialize (nombre, edad)
		@name = nombre
		@age = edad
	end
	def getName
		@name
	end
	def getAge
		@age
	end
	def setAge (edad)
		@age = edad
	end
	
end

p = Person.new ("pepe", 12)
puts p.name
puts p.age