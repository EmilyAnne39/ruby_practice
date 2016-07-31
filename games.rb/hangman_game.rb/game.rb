require_relative 'player' #require allows you to pull from the other two pages where various definitions are used.  You're requiring the names of those pages
require_relative 'hangman'

class Game #the name of the class we've created
    
  attr_accessor :player1, :player2, :word, :blanks #these attributes are able to be read & written 

  def initialize(player1, player2, word, blanks=[]) #we can call on all of these objects easily through our program by initializing them
    @player1 = player1 
    @player2 = player2
    @word = word
    @blanks = blanks
    @hangman = Hangman.new(["right leg", "left leg", "left arm", "right arm", "torso", "head"], [])#we've created the body parts that will cycle through an array as they are used
  end 
 
 def display_blanks #when dispalying blank blanks at the beginning of the program, 'clear the screen' will loop through 50 times
    if @blanks == []
    50 .times do
     puts "Clear the screen!"
    end
    @word.length.times do 
      @blanks.push("")
    end
    end
  puts
  print @blanks
  puts
 end 
 
 def word_is_guessed? 
    @blanks == @word.split("") ? true : false
 end
  
  def check_if_letter_in_word(guess)
    success = false
    @word.split("").each_with_index do |letter, index|
      if guess == letter
        @blanks[index] = guess
        success = true
      end
      end
      if success == false
         @hangman.add_body_part_until_hanged()
         @hangman.show_hangman()
      else
         display_blanks()
      end
  end
   
   def end_game? #how we define the method for end_game? for when it's called.  When it's called we determine:
     if word_is_guessed?() #if word is guessed then, you win
       puts "Game Over, you won!"
     elsif @hangman.is_man_hanged?() 
       puts "Game Over, you killed him!"
     else
       return "no"
     end 
   end
end 

puts "Who has a word?"
player1 = Player.new(gets.chomp.capitalize)
puts "Great, #{player1.name}, you take the lead.  Who else is playing?"
player2 = Player.new(gets.chomp.capitalize)
puts "That makes player #{player2.name} the Guesser!" 
puts "#{player1.name}, what is your word?"
word = gets.chomp.downcase

game = Game.new(player1, player2, word) #this loads the new game which in every instance uses two players & a word
game.display_blanks #this is calling our display_blanks method above and looping through our loop based on the blanks available

while game.end_game? == "no"  #this calls our end_game method above and cycles through what to do while the word is still being guessed or body parts are still available
  game.check_if_letter_in_word(player2.make_guess) #while there are letters left, we're calling the 'check_if' method and the make_guess method
end 

