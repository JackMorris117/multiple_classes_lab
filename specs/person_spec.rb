require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative ('../person')

class PersonTest < MiniTest::Test

    def setup
        @person = Person.new("Frodo", 69)
    end

    def test_get_person_name()
      assert_equal("Frodo", @person.name())
    end

    def test_get_person_age()
      assert_equal(69, @person.age())
    end

end