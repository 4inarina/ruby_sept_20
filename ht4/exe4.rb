puts "enter num"
num = gets.chomp.to_f

arr = (1..num).to_a

sum = 0
arr.each do |i|
	sum = sum + i ** i
end

puts sum