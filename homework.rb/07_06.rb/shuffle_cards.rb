names = []
input = ''
until input == 'Done'
  puts "Who is playing tonight?"
  input = gets.chomp.capitalize
  if input != 'Done'
    names << input
  end
end
names.each. do |person| 
    puts "#{person}'s cards are "{cards.shuffle!.pop} and #{cards.shuffle!.pop}
end
