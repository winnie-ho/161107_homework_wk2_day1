require('minitest/autorun')
require('minitest/rg')
require_relative('car')
require_relative('person')

class TestCar < Minitest::Test

  def setup

    @driver=Person.new("Alonso", "35")

    @car = Car.new("Red", "Nissan GTR", 100, 0, @driver)
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

  def test_driver
    @car.driver(name)
    assert_equal("Alonso", @driver.name)
  end

  # def test_pick_up_passengers
  #   @car.pick_up_passengers(@person)
  #   assert_equal(1,@car.pick_up_passengers)

  # end

end