puts "Enter 1st side"
a = gets.chomp.to_f

puts "Enter 2nd side"
b = gets.chomp.to_f

puts "Enter 3rd side"
c = gets.chomp.to_f

if a == b && b == c && a == c
	puts "Равносторонний треугольник"
elsif a == b && a != c && b != c
	puts "Равнобедренный треугольник"
elsif a == c && a != b && b != c
	puts "Равнобедренный треугольник"
elsif b == c && a != c && b != a
	puts "Равнобедренный треугольник"
else 
	puts "Обычный треугольник"
end
	
	