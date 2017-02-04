# Function Libraby
#Basic Random Function
def random(slimit,blimit)
    randNo = rand(slimit..blimit)
    return randNo
end

puts "Welcome. What do you want to do?\nHere's something you may want to do, type 'String', 'Bool' or 'Number' to continue, or type 'exit' to quit."
choise = gets.chomp!
t = 0
while t < t + 1 do
    choise.downcase!
    puts choise
    case choise
    when "string"
        puts "How many choices do you want to have?"
        choiseNum = gets.chomp
        result = Integer(choiseNum) rescue false
        while result == false or result == 0
            puts "Invalid Number. Give me another one."
            choiseNum = gets.chomp
            result = Integer(choiseNum) rescue false
        end
        allChoise = []
        x = 0
        choiseNum = choiseNum.to_i
        choiseNum.times do
            seq = x + 1
            puts "Give me the choise that is No.#{seq} "
            choise = gets.chomp
            allChoise.push(choise)
            puts "Added"
            x += 1
        end
        finalResultNo = random(0,choiseNum-1)
        finalResult = allChoise[finalResultNo]
        puts "The result is #{finalResult}"
    when "bool"
        result = random(0,1)
        if result == 0
            puts "The result is No."
        elsif result == 1
            puts "The result is Yes."
        end
    when "number"
        puts "I need the range of the numbers."
        puts "What is the minimum number of the range?"
        min = gets.chomp
        while min.match(/[a-zA-Z]/)
            puts "Oops! Looks like it is not a number.\nPlease input again."
            min = gets.chomp
        end
        puts "What is the maximun number of the range?"
        max = gets.chomp
        while max.match(/[0-9]/) == false do
            puts "Oops! Looks like it is not a number.\nPlease input again."
            min = gets.chomp
        end
        min = min.to_i
        max = max.to_i
        result = random(min,max)
        puts "The result is #{result}."       
    when exit
      exit     
    else
        puts "Error! Invalid Choice."
        invalidChoice = 1
    end
    if invalidChoice == 1
      puts "Give me another choise or type 'exit' to quit"
    else
      puts "If you want to do another choice, type what do you want. If you want to quit, type 'exit'."
    end
    choise = gets.chomp
    invalidChoice = nil
end