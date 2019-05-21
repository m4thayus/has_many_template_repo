class Pokemon

    attr_reader :name, :gender

    def initialize(name, gender=["male", "female"].sample)
       @name = name
       @gender = gender
    end

    def locations
        Poke_Loc.all.select{ |join| join.pokemon == self}
    end

    def location_count
        self.locations.length
    end

end
