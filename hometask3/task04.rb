puts "Enter 1st side"
a = gets.chomp.to_f

puts "Enter 2nd side"
b = gets.chomp.to_f

puts "Enter 3rd side"
c = gets.chomp.to_f

case 
 	when a < b && a < c
 	g = a
	when b < a && b < c
	g = b
	when c < b && c < a
	g = c
end

if g ** 2 == c ** 2 + b ** 2 || g ** 2 == a ** 2 + b ** 2 || g ** 2 == b ** 2 + c ** 2
	puts "Прямоугольный треугольник"
else
	puts "нет"
end

# task04.rb:19:in `<main>': undefined method `**' for nil:NilClass (NoMethodError)
