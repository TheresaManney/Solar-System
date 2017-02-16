# Solar system project with two completed waves.
# Created by Theresa Manney on 2.14.17
# This program will add a couple plants to a solar system class, the planet inforamtion will be printed as well

# Creating Planet class that included attributes that planets have
class Planet
  attr_reader :name, :planet_number, :type, :number_of_moons, :rings, :orbit, :distance_from_the_sun

  def initialize(planet_hash)
    @name = planet_hash[:name]
    @planet_number = planet_hash[:planet_number]
    @type = planet_hash[:type]
    @number_of_moons = planet_hash[:number_of_moons]
    @rings = planet_hash[:rings]
    @orbit = planet_hash[:orbit]
    @distance_from_the_sun = planet_hash[:distance_from_the_sun]

  end

  def print_info
    puts "Name: #{ @name }"
    puts "Planet number from sun: #{ @planet_number }"
    puts "Type of planet: #{ @type }"
    puts "Number of moons: #{ @number_of_moons }"
    puts "Has rings? #{ @rings }"
    puts "Orbit: #{ @orbit }"
    puts "Distance from the sun: #{ @distance_from_the_sun }\n\n"
  end
end


# Create SolarSystem class that will add planets into a solarsystem
class SolarSystem
  attr_accessor :name, :planets

  def initialize(ss_hash)
    @name = ss_hash[:name]
    @planets = []
  end

  def add_planet(p)
    @planets.push(p)
  end

  def print_planets
    puts "Solar system - #{@name}"
    puts "Planet(s) added - "
    # Prints information about each planet in the pretty way that I displayed it in my Planet class
    @planets.each do |counter|
      counter.print_info
    end
  end

end


# All planet info
# To improve, I could make all these hashes into one big array or hash with many hashes.
mercury_hash = {
  name:"Mercury",
  planet_number: 1,
  type: "Terrestrial",
  number_of_moons: 0,
  rings: false,
  orbit:"88 Earth days",
  distance_from_the_sun: "35.98 million miles"
}
venus_hash = {
  name: "Venus",
  planet_number: 2,
  type: "Terrestrial",
  number_of_moons: 0,
  rings: false,
  orbit: "225 Earth days",
  distance_from_the_sun: "67.24 million miles"
}
earth_hash = {
  name: "Earth",
  planet_number: 3,
  type: "Terrestrial",
  number_of_moons: 1,
  rings: false,
  orbit: "365.24 Earth days",
  distance_from_the_sun: "92.96 million miles"
}
mars_hash = {
  name: "Mars",
  planet_number: 4,
  type: "Terrestrial",
  number_of_moons: 2,
  rings: false,
  orbit: "687 Earth days",
  distance_from_the_sun: "141.6 million miles"
}
jupiter_hash = {
  name: "Jupiter",
  planet_number: 5,
  type: "Gas Giant",
  number_of_moons: 67,
  rings: true,
  orbit: "11.9 Earth years",
  distance_from_the_sun: "483.8 million miles"
}
saturn_hash = {
  name: "Saturn",
  planet_number: 6,
  type: "Gas Giant",
  number_of_moons: 150,
  rings: true,
  orbit: "10.5 Earth years",
  distance_from_the_sun: "888.2 million miles"
}
uranus_hash = {
  name: "Uranus",
  planet_number: 7,
  type: "Gas Giant",
  number_of_moons: 27,
  rings: true,
  orbit: "84 Earth years",
  distance_from_the_sun: "1.784 billion miles"
}
neptune_hash = {
  name: "Neptune",
  planet_number: 8,
  type: "Gas Giant",
  number_of_moons: 13,
  rings: true,
  orbit: "19 Earth years",
  distance_from_the_sun: "2.795 billion miles"
}

#SolarSystem hash, there is only one solar system for now
milkey_hash = {name: "Milkey Way"}


# Calling Planet class
mercury = Planet.new(mercury_hash)
venus = Planet.new(venus_hash)
earth = Planet.new(earth_hash)
mars = Planet.new(mars_hash)
jupiter = Planet.new(jupiter_hash)
saturn = Planet.new(saturn_hash)
uranus = Planet.new(uranus_hash)
neptune = Planet.new(neptune_hash)

# planets array created to print all planet information in do loop below, not necissary right now though with new Solar System class...
# planets = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune]

#prints all planets and thier info
# planets.each do |planet|
#   planet.print_info
# end

# Calling SolarSystem class
milkey_way = SolarSystem.new(milkey_hash)


# Adding planets to a solar system
milkey_way.add_planet(mercury)
milkey_way.add_planet(saturn)
milkey_way.add_planet(mars)

# printing solar system information
milkey_way.print_planets


#########- NO NEED TO LOOK AT THE COMMENTS BELOW -###########
# Below are some extra tests... also the beginings of me being able to have a user input which platet they would like to learn about (I will be working on improving this)

# Welcome message to the user... and then getting thier input
# puts "Hello! What planet would you like to learn about?"
# puts "(Chose based on number)"
# puts "1. Mercury, 2. Venus, 3. Earth, 4. Mars, 5. Jupiter, 6. Saturn, 7. Uranus, 8. Neptune, 9. Exit"

# planet_selection = gets.chomp
#
# prompting = true
# while prompting
#   if (planet_selection <= 1 && planet_selection >= 9)
#     puts "Please enter a number 1 - 9 "
#   elsif (planet_selection >= 1 && planet_selection <=9)
#     # possibly add a loop that would print user information that is wanted
#
#   else
#     puts "Thank you for using my planet program, happy learning!"
#     prompting = false
#   end
# end

#...extra note that I created to practice with git...#
