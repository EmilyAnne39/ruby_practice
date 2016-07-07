
students =w%[Brenda Bobby Brad Brillo]
teachers =w%[Jones Mustard Rodgers]
puts 'Who are you?'
user=gets.chomp.downcase
    if students.include?(user)
        puts 'Back to class'
    elsif teachers.include?(user)
        puts 'fun day for some learning'
    else
        puts 'get lost'
    end
    
