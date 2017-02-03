require 'Function_Library.rb'
puts "What is the range of the number?"
puts "What is the minimum number of the range?"
min = gets.chomp
while min.match(/[a-zA-Z]/)
    puts "Oops! Looks like it is not a number.\nPlease input again."
    min = gets.chomp
end
puts "What is the maximun number of the range?"
max = gets.chomp
while max.match(/[a-zA-Z]/)
    puts "Oops! Looks like it is not a number.\nPlease input again."
    min = gets.chomp
end
min.to_i!
max.to_i!
result = random(min,max)
puts "The result is #{result}."