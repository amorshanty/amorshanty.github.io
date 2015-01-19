# SL1. The calculator

# We’ll start with something nice and easy so we learn this testing thing quickly.

# Write a class, called Calculator, that basically performs all four basic math operations: addition, substraction, multiplication and
# division. In order to keep it simple, all of them will have two numeric parameters.

# After writing your class, write several tests. For each one, print “OK” if it succeeded, “FAIL” otherwise, in order to test that
# everything is working out properly.


class Calculator
	def initialize(number_1, number_2)
		@number_1 = number_1
		@number_2 = number_2
	end

	def addition
		number_1 + number_2
	end

	def substraction
		number_1 - number_2
	end

	def multiplication
		number_1 * number_2
	end
	
	def division
		number_1 / number_2
	end
end

mycalculator = Calculator.new(10, 5)

# # ----- TEST 1 -----
# if 
# 	numbers > 0
# then
# 	put


