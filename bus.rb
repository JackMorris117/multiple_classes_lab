class Bus

    attr_reader :route_number, :destination

    def initialize(route_number, destination)
        @route_number = route_number
        @destination = destination
        @passengers = []
    end

    def drive()
        return "Brum brum"
    end

    def number_of_passengers()
        return @passengers.size()
    end

    def pick_up(person)
        @passengers.push(person)
    end

    def drop_off(person)
        @passengers.delete(person)
    end

    def empty_the_bus()
        @passengers.clear()
    end



end