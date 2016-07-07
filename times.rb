puts 'Are you famous?'
ans=gets.chomp.downcase
    if ans=='yes'
        10.times do
            puts 'Oh my God!'
        end
    elsif ans=='no'
        3.times.do
            puts 'Stranger Danger!'
        end
    else
        puts 'What'
    end
        