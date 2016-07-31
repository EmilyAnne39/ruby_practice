#Update the Guessing Game program:
#Ask the user for a number between 1 & 100
#Use both AND/OR and elsif to test for both exactness and closeness
#e.g., if the guess is only five away, have a message to say something like "Oh! So close!"

puts "Give me a number between 1-100."
num = gets.chomp.to_i

if num == 50
  puts "Nice work, you guessed it!"
elsif num >=45 && num <= 49
  puts "Oh so close!"
else
  puts "Not even close!"
end

