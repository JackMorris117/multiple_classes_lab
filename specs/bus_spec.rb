require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative ('../bus')
require_relative ('../person')
require_relative ('../bus_stop')

# ------------------------------------------------------------------

class BusTest < MiniTest::Test

    def setup()
        @bus = Bus.new(14, :granton)
        @busstop = BusStop.new(:town)

        @person1 = Person.new("Sam", 420)
        @person2 = Person.new("Merry", 90)

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

    def test_bus_pickup()
        @bus.pick_up(@person1)
        assert_equal(1, @bus.number_of_passengers())
    end

    def test_bus_drop_off()
        @bus.pick_up(@person1)
        @bus.drop_off(@person1)
        assert_equal(0, @bus.number_of_passengers())
    end
    
    def test_empty_the_bus()
        @bus.empty_the_bus()
        assert_equal(0, @bus.number_of_passengers())
    end

    def test_can_add_to_bus_stop_queue()
        @busstop.add_person_to_queue(@person1)
        assert_equal(1, @busstop.queue().count())
    end

    def test_add_people_to_bus_from_queue()
        @busstop.add_person_to_queue(@person2)
        @busstop.remove_person_from_queue(@person2)
        @bus.pick_up(@person2)
        assert_equal(0, @busstop.queue().count())
        assert_equal(1, @bus.number_of_passengers())
    end



end