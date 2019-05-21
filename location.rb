class Location

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def pokemon
        Poke_Loc.all.select{ |join| join.location == self }
    end

    def pokemon_count
        self.pokemon.length
    end
end
