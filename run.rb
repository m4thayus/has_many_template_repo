require_relative './pokemon.rb'
require_relative './location.rb'
require_relative './poke_loc.rb'

# Pokemon
pikachu = Pokemon.new("Pikachu")
zubat = Pokemon.new("Zubat")
clefairy = Pokemon.new("Clefairy")
mewtwo = Pokemon.new("Mewtwo")

# Location
viridian_forest = Location.new("Viridian Forest")
power_plant = Location.new("Power Plant")

mt_moon = Location.new("Mt. Moon")
rock_tunnel = Location.new("Rock Tunnel")
seafoam_islands = Location.new("Seafoam Islands")
victory_road = Location.new("Victory Road")

celadon_city = Location.new("Celadon City")

cerulean_cave = Location.new("Cerulean Cave")

# Poke_Loc
Poke_Loc.new(pikachu, viridian_forest)
Poke_Loc.new(pikachu, power_plant)
Poke_Loc.new(zubat, mt_moon)
Poke_Loc.new(zubat, rock_tunnel)
Poke_Loc.new(zubat, seafoam_islands)
Poke_Loc.new(zubat, victory_road)
Poke_Loc.new(clefairy, mt_moon)
Poke_Loc.new(clefairy, celadon_city)
Poke_Loc.new(mewtwo, cerulean_cave)


# Tests
puts "Pikachu has 2 locations, viridian_forest and power_plant:"
p pikachu.locations
puts
puts "Zubat has 4 locations:"
puts zubat.location_count
puts
puts "Cerulean Cave has Mewtwo"
p cerulean_cave.pokemon
puts
puts "Mt. Moon has 2 pokemon:"
puts mt_moon.pokemon_count
