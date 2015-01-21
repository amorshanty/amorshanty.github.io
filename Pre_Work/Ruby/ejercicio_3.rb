class Car
  attr_accessor :color

  @@total = 0

  def self.total
    return @@total
  end

  def initialize(color)
    @color = color
    @@total = @@total + 1
  end

  def honk
    puts "Beeeeeeeeep!"
  end
end

my_car = Car.new "red"
other_car = Car.new "rainbow"

puts "So far we've got #{Car.total} cars."