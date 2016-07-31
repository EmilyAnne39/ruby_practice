#Write a loop that continues to display random numbers between 1 and 10 until the number generated is 7.

num = gets.chomp

until num == 7
 puts {rand 1..10}
 break
end 


