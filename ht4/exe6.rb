puts "enter d-m-y"
d = gets.chomp.to_i
m = gets.chomp.to_i
y = gets.chomp.to_i

arr = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

sum = 0
x = 0 # кол-во кругов
for i in arr
	x = x + 1
	break if x == m
   	sum = sum + i
end
if ((y % 4 == 0 && y % 100 != 0) || (y % 400 == 0)) && m >=3
	puts "Порядковый номер #{ d + sum + 1 }"
else
puts "Порядковый номер #{ d + sum }"
end


