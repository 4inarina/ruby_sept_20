class Train
	attr_reader :number, :type, :route, :current_station

	def initialize (number, type, railroadcar)
		@number = number
		@type = type
		@railroadcar = railroadcar
		@speed = 0
	end
	
	def route=(rt)
		@route = rt
		@current_station = rt.first_station
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

	def add_rrc
		@railroadcar += 1 if @speed == 0
		puts "Количество вагонов #{@railroadcar}"
	end

	def delete_rrc
		@railroadcar -= 1 if @speed == 0 && @railroadcar > 0
		puts "Количество вагонов #{@railroadcar}"
	end

	def current_rrc
		puts "Текущее количество вагонов #{@railroadcar}"
	end

	def next_station 
		@route.display[@route.display.index(@current_station) + 1] if @current_station != @route.last_station
	end

	def previous_station 
		@route.display[@route.display.index(@current_station) - 1] if @current_station != @route.first_station
	end

	def move_to_next_station
		@current_station = next_station 
	end

	def move_to_previous_station
		@current_station = previous_station
	end
	
end

Class PassengerTrain << Train
end

Class CargoTrain << Train
end

Class Railroadcar
attr_accessor :number_rrc




end