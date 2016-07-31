#Until Dad says yes, keep asking him if we can go to Itchy and Scratchy Land.

puts "Dad, can we go to Itchy & Scratchy Land?!"
ans = gets.chomp.downcase 

until ans == "yes"
puts "Dad, can we go to Itchy & Scratchy Land?!"
break

end
