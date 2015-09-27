puts "enter num"
num = gets.chomp.to_f

arr = (1..num).to_a

fact = 1
arr.each do |i|
	fact = fact * i
end

puts fact