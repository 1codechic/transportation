module Transportable
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    puts "I am going " + (@speed += 10).to_s + " miles per hour"
  end

  def turn(new_direction)
    @direction = new_direction
    p "Oh goodness we now need to go " + @direction
  end
end


class Car
  include Transportable
  def honk_horn
    p "The sound your car makes when you blow the horn.....Beeeeeeep!"
  end
end

class Bike
  include Transportable
  def ring_bell
    p "My bike is cool. It has a bell on it that goes Ring Ring!"
  end
end



car1 = Car.new
car1.accelerate
car1.honk_horn
car1.turn("west")
p car1

bike1 = Bike.new
bike1.ring_bell
bike1.turn("east")
p bike1