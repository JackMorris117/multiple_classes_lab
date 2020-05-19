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

end