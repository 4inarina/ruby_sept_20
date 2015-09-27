arr = []
x = 10
while (10..100).include?(x)
	arr << x
	x = x + 5
	break if x > 100
end
puts arr.inspect


