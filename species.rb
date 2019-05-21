class Species

    @@all = []
    attr_reader :name, :habitat

    def initialize(name)
       @name = name
       @habitat = []
       @@all << self
    end

    def locations
        Pokemon.all.select{ |join| join.species == self}
    end

    def location_count
        self.locations.length
    end

    def add_habitat(habitat)
    @habitat << habitat
    end

    def self.all
        @@all
    end

end
