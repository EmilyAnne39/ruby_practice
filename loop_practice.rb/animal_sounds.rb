#Update the Dog Says Cat Says program:
#Ask the user for an animal
#Use if/elsif to program in a number of animal sounds
#Use else for unknown animals

puts "What is your favorite animal?"
animal = gets.chomp.downcase

if animal == "cat"
  puts "meow"
elsif animal == "dog"
  puts "woof"
elsif animal == "llama"
  puts "what the heck sound does a llama make?"
else
  puts "Why don't you just tell me the sound a #{animal} makes"
end

