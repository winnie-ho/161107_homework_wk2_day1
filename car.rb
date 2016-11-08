

class Car

  attr_reader :fuel_level, :speed

  attr_accessor :colour, :model, :driver, :passengers

  def initialize(colour, model, driver)
    @colour = colour
    @model = model
    @fuel_level = 100
    @speed = 0
    @driver = driver
    @passengers = []

  end

  def accelerate
    @speed+=10
    @fuel_level-=5
  end

  def brake(speed)
    if speed<=10
      @speed =0
    elsif speed>10
      @speed=speed-10
    end
  end

  def driver(name)
    return @driver.name
  end

  def pick_up_passengers(passenger)
    @passengers<<1
    return passenger.name
  end

  def passenger_count
    return @passengers.count
  end

end