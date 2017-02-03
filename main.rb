puts "Welcome. What do you want to do?\nHere's something you want to do, type 'String', 'Bool' or 'Number' to continue."
choise = gets.chomp
choise.downcase!
case choise
  when string
    require 'Choise_String.rb'
  when bool
   require 'Choise_Boolean.rb'
  when number
    require 'Choise_Number.rb'
end
