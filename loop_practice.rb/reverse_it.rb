#Now reverse it! Ask again for a number between 1 and 10, then count down to 0.

puts "Give me a number between 1-10"
num = gets.chomp.to_i

until num == 0
 puts num-=1
end

 