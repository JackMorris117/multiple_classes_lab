require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative ('../bus')
require_relative ('../person')


class BusTest < MiniTest::Test

    def setup()
        @bus = Bus.new(14, :granton)
        @person = Person.new("Sam", 420)
    end

    def test_can_get_route_number()
        assert_equal(14, @bus.route_number())
    end

    def test_can_get_destination()
        assert_equal(:granton, @bus.destination())
    end

    def test_can_get_drive_noise()
        assert_equal("Brum brum", @bus.drive())
    end

    def test_can_get_number_of_passengers()
        assert_equal(0, @bus.number_of_passengers())
    end

end