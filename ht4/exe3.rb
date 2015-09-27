puts "enter num1"
num = gets.chomp.to_f
puts "enter num2"
num2 = gets.chomp.to_f

arr = (1..num).to_a

sum = 0
arr.each do |i|
	if i % num2 == 0 
		sum = sum + i
	end
end
avg = sum / arr.size.to_f

puts sum
puts avg