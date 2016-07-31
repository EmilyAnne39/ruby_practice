#Ask the user for a number between 1-10, print the double of their number through 20.

puts "Give me a number between 1-10.  Then I'll double it!"
ans = gets.chomp.to_i

until ans == 20 
  puts ans * 2
end  
