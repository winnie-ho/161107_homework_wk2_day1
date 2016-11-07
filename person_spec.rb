require('minitest/autorun')
require('minitest/rg')
require_relative('person')

class TestPerson < Minitest::Test

  def test_person_values
    person = Person.new("Winnie", 31)
    assert_equal("Winnie", person.name)
    assert_equal(31, person.age)
  end

end