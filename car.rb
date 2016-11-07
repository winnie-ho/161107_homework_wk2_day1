class Car

  attr_reader :colour, :model, :fuel_level, :speed

  def initialize(colour, model, fuel_level, speed)
    @colour = colour
    @model = model
    @fuel_level = fuel_level
    @speed = speed

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

end