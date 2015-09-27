puts "enter num"
num = gets.chomp.to_f

arr = (1..num).to_a
# sum = 0
# for i in arr do
# 	sum = sum + i
# end

# quan = arr.size
# avg = sum / quan

# puts sum
# puts avg 

# i = 0
# sum = 0
# x = -1
# while i < arr.size do
# 	x = x + 1
# 	i = arr[x]
# 	sum = sum + i
# 	avg = sum / arr.size.to_i	
# end
# puts sum
# puts avg

# i = 0
# sum = 0
# x = -1
# until i >= arr.size do
# 	x = x + 1
# 	i = arr[x]
# 	sum = sum + 1
# end
# puts sum


sum = 0
arr.each do |i|
	sum = sum + i
end
avg = sum / arr.size.to_f

puts sum
puts avg

