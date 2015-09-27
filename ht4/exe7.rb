puts "Кол-во студентов"
students = gets.chomp.to_i

x = 0
ball = []
while x < students
x = x + 1
puts "Поставьте оценку по 100-бальной шкале"
ball << gets.chomp.to_i 
end

sum = 0
for i in ball do
	sum = sum + i
end

quan = ball.size.to_f
avg = sum / quan

puts avg 