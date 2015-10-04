class Station
	def initialize (name)
		@name = name
		@trains_list = []
	end

	def accept(train)
		@trains_list << train
	end

	def display(all_trains)
		if @trains_list.empty?
			puts "Нет поездов"
		else @trains_list.each do |train|
			puts "Поезд {train.number}"
		end
	end

	def send(train)
		if @trains_list > 0 
			@trains_list.delete(train)
		else puts "Нет поездов"
	end
	end

end

class Train
	def initialize (number, type, railroadcar)
		@number = number
		@type = type
		@railroadcar = railroadcar
		@speed = 0
	end

	def move_faster
		@speed += 10 if @speed < 110
		puts "Текущая скорость #{@speed}"
	end

	def current_speed
		puts "Текущая скорость #{@speed}"
	end
		
	def move_slower
		@speed -= 10 if @speed > 0
		puts @speed
	end

	def add
		@railroadcar += 1 if @speed == 0
		puts "Количество вагонов #{@railroadcar}"
	end

	def delete
		@railroadcar -= 1 if @speed == 0 && @railroadcar > 0
		puts "Количество вагонов #{@railroadcar}"
	end

	def current_rrc
		puts "Текущее количество вагонов #{@railroadcar}"
	end
end




