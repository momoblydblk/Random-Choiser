def random(limit)
    randNo = rand(limit)
    return randNo
end

puts "How many choices do you want to have?"
choiseNum = gets.chomp
result = Integer(choiseNum) rescue false
while result*1 == 0 do
    if result == false
        puts "Error: Not a number."
    elsif result == 0
        puts "Invalid Number."
    end
    result = Integer(choiseNum) rescue false
    puts result
end
choiseNum = choiseNum.to_i
allChoise = []
x = 0
while x < choiseNum
    seq = x + 1
    puts "Give me the choise that is No.#{seq} "
    choise = gets.chomp
    allChoise.push(choise)
    puts "Added"
    x += 1
end
finalResultNo = random(choiseNum)
finalResult = allChoise[finalResultNo]
puts finalResult
