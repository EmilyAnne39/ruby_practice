teams = []
input = ''
while input != 'done'
  puts 'What are you least favorite teams?'
  input = gets.chomp
  teams << input 
end
teams.pop
puts teams

    