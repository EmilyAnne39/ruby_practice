require_relative 'fighter' #we need to relate to any other files we're using in this class
require_relative 'bear'
class Ninja <Fighter
  def attack(enemy) #redefined attack method from parent/Fighter class to add a characteristic unique to ninja
    puts "...silence"
    enemy.lose_health(self.power, enemy.health)
    end
end

ninja = Ninja.new("Jet Li", 85, 10)
bear = Bear.new("Yogi", 100, 15)
puts ninja.attack(bear)
p bear #tests our game to see if points, etc change