require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative ('../bus_stop')
require_relative ('../bus')
require_relative ('../person')
# ------------------------------------------------------------------

class BusStopTest < MiniTest::Test
    def setup
        @busstop = BusStop.new(:south_gyle)
        @person3 = Person.new("Aragorn", 87)

    end

    def test_add_person_to_queue()
        @busstop.add_person_to_queue(@person3)
        assert_equal(1, @busstop.queue().count())
    end
   
    def test_remove_person_from_queue()
        @busstop.add_person_to_queue(@person3)
        @busstop.remove_person_from_queue(@person3)
        assert_equal(0, @busstop.queue().count())

    end




end