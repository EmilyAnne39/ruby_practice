#Dog Says Cat Says: ask user to enter 'dog' or 'cat', program prints animal's sound

puts "Are you a dog or a cat?"
ans = gets.chomp.downcase

  if ans == "dog"
    puts "woof"
  elsif ans == "cat" 
    puts "meow"
  end 


