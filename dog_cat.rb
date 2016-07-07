puts 'What is your favorite animal?'
answer=gets.chomp.downcase
if answer=='dog'
    puts 'woof'
elsif answer=='cow'
    puts 'moo'
elsif answer=='butterfly'
    puts 'flutter, flutter'
elsif answer=='duck'
    puts 'quack, quack'
else
    puts 'what the heck is that kind of animal?'
end
