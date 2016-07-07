fav_num=12
puts 'Guess what number between 1-100!'
answer=gets.chomp.to_i
if answer==fav_num
    puts 'Wow, that is my favorite.'
elsif answer <=fav_num + 5 && answer >= fav_num - 5
    puts 'Oh! So Close!'
else 
    puts 'Nope!'
end