require_relative 'bear'
require_relative 'ninja'
class Battle
  attr_reader :fighter1, :fighter2
  def initialize(fighter1, fighter2)
    @fighter1=fighter1
    @fighter2=fighter2
  end
  def fight #now calling method attached to these fighters
    @fighter1.attack(@fighter2) #fighter1 got attacked by fighter 2
    @fighter2.attack(@fighter1)
    battle_status
  end
  def battle_status
    puts "#{@fighter1.name} has #{fighter1.health} health left"
    puts "#{fighter2.name} has #{fighter2.health} health left"
  end
end

bear = Bear.new('Berry', 100,12)
ninja = Ninja.new('Jet Li', 100, 10)
battle = Battle.new(bear,ninja)
puts battle.fighter1.name #calling name of fighter within the class of Battle.  Battle refers back to battle, fighter1 refers back to bear
puts battle.fighter2.name #refers to ninja and the the ninja's name
battle.fight
battle.fight
battle.fight