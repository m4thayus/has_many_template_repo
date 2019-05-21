class Poke_Loc
    
    @@all = []

    attr_reader :pokemon, :location

    def initialize(pokemon, location)
        @pokemon = pokemon
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

end
