puts "enter num"
num = gets.chomp.to_f

arr = (1..num).to_a

sum = 0
arr.each do |i|
	if i % 2 == 0 
		sum = sum + i
	end
end
avg = sum / arr.size.to_f

puts sum
puts avg