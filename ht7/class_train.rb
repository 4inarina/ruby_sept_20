class Train
		
		@@trains = {}

	def self.find(number)
			@@trains[number]
	end

	attr_reader :number, :type, :route, :current_station, :railroadcar

	def initialize (number, type)
		@number = number
		@type = type
		@railroadcar = {}
		@speed = 0
		@@trains[number] = self
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

	def add_rrc=(rrc)
		if @railroadcar.value?(rrc) == false
		rrc.number_rrc = @railroadcar.size + 1
		@railroadcar[@railroadcar.size + 1] = rrc if @speed == 0 
		end
	end

	def delete_rrc
		if @speed == 0 && @railroadcar.empty? == false
		@railroadcar[@railroadcar.size].number_rrc = 0
		@railroadcar.delete(@railroadcar.size)
		end 
	end

	def display_rrc
		@railroadcar.display
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

class PassengerTrain < Train

def add_rrc=(rrc)
		super(rrc) if rrc.class == PassRRC
	end
end

class CargoTrain < Train
	def add_rrc=(rrc)
		super(rrc) if rrc.class == CargoRRC
	end
end


