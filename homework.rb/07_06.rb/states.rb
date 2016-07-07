input = ''
states = []
until input == 'done'
  puts 'what states have you visited?'
  states<< input
  input = gets.chomp
end
puts states

    
