puts 'how old are you?'
age= gets.chomp.to_i
    if ans>= 21
        puts 'you can come in'
    elsif ans<21
        puts 'you have #{21 - ans} years left'
    end
    

