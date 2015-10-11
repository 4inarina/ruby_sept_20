class Route
	attr_reader :first_station, :last_station, :stations

	def initialize (first, last)
		@first_station = first
		@last_station = last
		@stops = []
		@route = [@first_station, @stops, @last_station]
		validate!
	end

	def valid?
	validate!
	rescue ArgumentError
	end

	def validate!
	raise ArgumentError,  "Неправильное имя станции" if @first_station.class != String || @last_station.class != String
	true
	end

	def add_station(station)
		@stops << station if @route.flatten.include?(station) == false
	end

	def remove_station(station)
		if @stops.size > 0
			@stops.delete(station)
		end
	end

	def display
		@route.flatten
	end
end