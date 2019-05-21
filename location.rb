class Location

    @@all = []
    attr_reader :name,:type

    def initialize(name,type)
        @name = name
        @type = type
        @@all << self
    end

    def species
        Pokemon.all.select{ |join| join.location == self }
    end

    def species_count
        self.species.length
    end

    def self.all
        @@all
    end

end
