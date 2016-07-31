class Fighter
    attr_reader :name #because they shouldn't be able to change their names.
    attr_accessor :health, :power
    def initialize (name, health, power)
      @name = name #these are attributes
      @health = health
      @power = power
    end
    def attack(enemy) #takes an argument
    enemy.lose_health(self.power, enemy.health) #this is a method as indicated by '.' #self point to the instance/whoever initiated the attack
    end
    def lose_health(enemy_power, health) #the enemy calls the lose_health method
        self.health -= enemy_power #
    end
end
boxer1= Fighter.new("Rocky", 110, 15) #this is a new object
boxer2= Fighter.new("Rob", 100, 5)
puts boxer1.attack(boxer2)
p boxer1 #inspects what is going on when you run program (explains how many points the guy lost for example)
puts boxer2.attack(boxer1)
p boxer2


