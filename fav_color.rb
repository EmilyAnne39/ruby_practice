puts 'what is your fav color?'
input=gets.chomp.downcase
    if input == 'blue' || input =='green'
        puts 'Great Choice!'
    else puts 'Really?' + input + ' is your fav color?  Eww.'
    end

