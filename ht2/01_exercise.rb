puts "Как тебя зовут?"
name = gets.chomp

puts "Какой у тебя рост?"
height = gets.chomp.to_i

puts "Твой идеальный вес #{ height - 110}"