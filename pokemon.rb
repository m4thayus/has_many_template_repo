class Pokemon
    
    @@all = []

    attr_reader :species, :location, :gender

    def initialize(species, location,gender = nil)
        @species = species
        @location = location
        @gender ||= ["male", "female"].sample
        @@all << self
    end

    def self.all
        @@all
    end

    def self.count
        self.all.length
    end

    def self.spawn
        species = Species.all.sample
        habitat = species.habitat.sample
        location = Location.all.select {|location| location.type == habitat}
        Pokemon.new(species,location.sample) unless self.all.length == 0
    end

end
