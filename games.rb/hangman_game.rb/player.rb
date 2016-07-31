class Player
  attr_accessor :name
    
    def initialize(name)
      @name = name
    end 
    
    def get_word
    end
    
    def make_guess #we're calling on this method each time we need to guess a letter
      puts "#{@name}, guess a letter!"
      return gets.chomp.downcase
    end

end 


