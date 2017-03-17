require 'pry'


class Car
  attr_accessor :color, :wheel_count

  def initialize(wheel_count)
    @color = color
    @wheel_count = wheel_count
    @started = false
  end

  def start
    if @started == true
      "BZZT! Nice try, though."
    else
      @started = true
      "Starting up!"
    end
  end

  def report_color
    "I am #{@color}"
  end

  def horn
    "BEEEEEP!"
  end

  def drive(distance)
    "I'm driving #{distance} miles"
  end
end

my_car = Car.new(18)
my_second_car = Car.new(2)
my_car.color = "purple"

puts my_car.horn
puts my_car.drive(12)
puts my_car.report_color
puts "This sweet ride is sitting on #{my_car.wheel_count} wheels"
puts "This sweet ride is sitting on #{my_second_car.wheel_count} wheels"
puts my_car.start
puts my_car.start