class Station

	def initialize (name)
		@name = name
		@trains_list = []
	end

	def accept(train)
		@trains_list << train if @trains_list.include?(train) == false
	end

	def display
		if @trains_list.empty?
			puts "Нет поездов"
		else @trains_list.each do |train|
			puts "Поезд #{train.number}"
			end
		end
	end

	def send(train)
		if @trains_list.size > 0 
			@trains_list.delete(train)
		else puts "Нет поездов"
		end
	end

	def display_train_by_type
		sumcargo = 0
		sumpass = 0
		@trains_list.each do |i|
			sumcargo = sumcargo + 1 if i.type == "cargo"
			sumpass += 1 if i.type == "pass"
		end  
		puts "Количество пассажирских поездов #{sumpass}"
		puts "Количество грузовых поездов #{sumcargo}"
	end

end