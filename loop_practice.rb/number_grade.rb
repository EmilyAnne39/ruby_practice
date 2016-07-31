#Ask user for their number grade, if the grade is at least 60, tell them they passed! 
#If it's lower than 60, tell them they have to take the class again.

puts "What grade did you get on the test?!"
ans = gets.chomp.to_i

if ans >= 60
  puts "You passed!"
else ans <= 60
  puts "Sorry, sucka!  You must take the class again."
end 