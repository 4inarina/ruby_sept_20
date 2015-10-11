class Station

		@@all_stations = []

	def self.all
		@@all_stations 
	end

	def initialize(name)
		@name = name
		@trains_list = []
		@@all_stations << self
		validate!
	end

	def valid?
	validate!
	rescue ArgumentError
	end

	def validate!
	raise ArgumentError,  "Неправильное имя станции" if @name.class != String
	true
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
		 @trains_list.delete(train) 
		raise ArgumentError, "Нет поездов" if @trains_list.size == 0
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