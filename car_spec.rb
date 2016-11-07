require('minitest/autorun')
require('minitest/rg')
require_relative('car')

class TestCar < Minitest::Test
  def setup
    @car = Car.new("Red", "Nissan GTR", 100, 0)
  end



  def test_car_values
    assert_equal("Red", @car.colour)
    assert_equal("Nissan GTR", @car.model)
  end

  def test_starting_fuel_level
    assert_equal(100, @car.fuel_level)
  end

  def test_speed
    assert_equal(0, @car.speed)
  end

  def test_accelerate
    @car.accelerate()
    assert_equal(10, @car.speed)
    assert_equal(95, @car.fuel_level)
  end

  def test_brake
    @car.brake(50)
    assert_equal(40, @car.speed)
  end

  def test_brake_does_not_go_negative
    @car.brake(2)
    assert_equal(0,@car.speed)
  end


end