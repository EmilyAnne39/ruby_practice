#Ask the user if they're famous; if they are, print 'OH MY GOD!' 10x. 
#If not print 'STRANGER DANGER!' 3x.

puts "Are you famous?!"
ans = gets.chomp.downcase

if ans == "yes"
  10.times do
    puts "OH MY GOD!"
  end 
else
  3.times do
    puts "STRANGER DANGER!"
  end 
end
