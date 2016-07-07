animal_array = %w[cow sheep goat chicken llama dog cat]
favorite = "llama"
animal_array.each do |a| puts a
favorite = "llama"
    if a == favorite
        puts "I love #{a}"
    end
end

