# class String
# 	def say_yay!
# 		puts "Yaaaaaaaaay!"
# 	end
# end

# "Oh, really?".say_yay!

# class Object
# 	def salut
# 		print "Hello!" + self.class.to_s
# 	end
# end

# "Oh, Really?".salut

# class Fixnum
# 	def to_s
# 		"banana"
# 	end
# end

# print 3.to_s

# class Dummy
# 	def method_missing (m, *args, &block)
# 		some_array = *args
# 		print "Monkey"

# 		some_array.each do |element|
# 			print " " = element.to_s
# 	end
# end

# Dummy.new
# Dummy.whatever(3,4,5,6)

require 'date'
my_code = "puts Date.today"
eval my_code





















