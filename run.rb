require_relative './species.rb'
require_relative './location.rb'
require_relative './pokemon.rb'
require 'pry'

# Pokemon
pikachu = Species.new("Pikachu")
pikachu.add_habitat("forest")
pikachu.add_habitat("urban")
zubat = Species.new("Zubat")
zubat.add_habitat("cave")
clefairy = Species.new("Clefairy")
clefairy.add_habitat("cave")
mewtwo = Species.new("Mewtwo")
mewtwo.add_habitat("cave")

# Location
viridian_forest = Location.new("Viridian Forest","forest")
power_plant = Location.new("Power Plant","urban")
mt_moon = Location.new("Mt. Moon","cave")
rock_tunnel = Location.new("Rock Tunnel","cave")
seafoam_islands = Location.new("Seafoam Islands","cave")
victory_road = Location.new("Victory Road","cave")
celadon_city = Location.new("Celadon City","urban")
cerulean_cave = Location.new("Cerulean Cave","cave")

#Pokemon
Pokemon.new(pikachu, viridian_forest)
Pokemon.new(pikachu, power_plant)
Pokemon.new(zubat, mt_moon)
Pokemon.new(zubat, rock_tunnel)
Pokemon.new(zubat, seafoam_islands)
Pokemon.new(zubat, victory_road)
Pokemon.new(clefairy, mt_moon)
Pokemon.new(clefairy, celadon_city)
Pokemon.new(mewtwo, cerulean_cave)


# Tests
puts "Pikachu has 2 locations, viridian_forest and power_plant:"
p pikachu.locations
puts
puts "Zubat has 4 locations:"
puts zubat.location_count
puts
puts "Cerulean Cave has Mewtwo"
p cerulean_cave.species
puts
puts "Mt. Moon has 2 pokemon:"
puts mt_moon.species_count

# 10.times do Pokemon.spawn end

binding.pry

"HI"