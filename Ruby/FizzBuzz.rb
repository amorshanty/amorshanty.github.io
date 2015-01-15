def fizzbuzz(number)
  if number % 3 == 0 && number % 5 == 0
		puts "FizzBuzz"		
  elsif number % 3 == 0
    puts "Fizz"
  elsif number % 5 == 0
    puts "Buzz"
  else 
  	puts number
  end
end

numbers = (1..20).to_a
numbers.each do |number_inside_array|
  fizzbuzz(number_inside_array)
end