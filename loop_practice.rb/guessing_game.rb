#Guessing Game: Store a number in your program between 1 and 10. Ask the user to guess it, 
#if they guessed correctly, puts "Wow!", else, "Nope!"


puts "Guess a number between 1-10!"
ans = gets.chomp.to_i 

  if ans == 5
    puts "Wow!"
  else 
    puts "Nope!"
  end 