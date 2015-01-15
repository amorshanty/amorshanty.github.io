puts "Hello, world!"
puts "I"
puts "like"
puts "pie."

print "Cookies"
print "are"
print "good"
print "too."

# This is a comment
puts "Hello, world!"

puts "Hello again!" # This also works for a comment

operation_result = 12 * 34
puts "Operation result is "
puts operation_result

operation_result = 10
puts "Operation result is "
puts operation_result

puts "Hello\nworld"
puts 'Hello\nworld'

name = "Amor"
puts "Hi #{name}"

puts "What's your name?"
name = gets.chomp
puts "Hello, #{name}."

puts "Give me a number"
first_number = gets.chomp.to_i
puts "Give me another number"
second_number = gets.chomp.to_i
puts "#{first_number} x #{second_number} = #{first_number * second_number}"

puts "What's your name?"
name = gets.chomp
IO.write('name.doc', name)