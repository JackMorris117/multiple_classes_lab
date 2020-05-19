class BusStop

    attr_reader :name, :queue

    def initialize(name)
        @name = name
        @queue = []
    end

    def add_person_to_queue(person)
        @queue.push(person)
    end

    def remove_person_from_queue(person)
        @queue.delete(person)
    end

end