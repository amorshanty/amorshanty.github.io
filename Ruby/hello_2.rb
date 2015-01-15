puts "Cual es el nombre del fichero?"
name = gets.chomp

file_contents = IO.read(name)
puts "The source file contains: #{file_contents}"

puts "Nombre del fichero para guardar"
destination_file = gets.chomp
IO.write(destination_file, file_contents)

