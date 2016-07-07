cars={"Honda"=>"Civic", "Chevy"=>"Corvette", "Pontiac"=>"TransAm"}
puts "What kind of car do you drive?"
make=gets.chomp

cars.each do |key,value|
    if value == make
        puts "Oh you drive a #{value}, that is a #{key}, right?"
    end
end
