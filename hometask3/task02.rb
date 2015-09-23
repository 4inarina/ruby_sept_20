puts "Enter any number"
a = gets.chomp.to_i

case a
	when 1
	puts "ПНД"
	when 2
	puts "ВТ"
	when 3
	puts "СР"
	when 4
	puts "ЧТ"
	when 5
	puts "ПТ"
	when 6
	puts "СБ"
	when 7
	puts "ВС"
	else 
		puts "Неверный день недели"
end