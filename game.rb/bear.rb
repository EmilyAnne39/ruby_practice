require_relative 'fighter' #since bear class is in a whole other file, so we need to refer/pull from that file.  Loads and runs code in fighter file.
class Bear < Fighter #all of the methods we have in Bear will also be found in Fighter.  This is inheriting a class. 
  def initialize(name, health, power)
      super(name,health,power)
  end
  def attach(enemy) #this overrides our superclass from the fighter file.  Adds characteristics to our bear file.
      puts "RAWR"
      enemy.lose_health(self.power, enemy.health)
  end
end  #every object is a member of a class.
bear = Bear.new('Billy', 100, 10)
