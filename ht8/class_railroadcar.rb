class Railroadcar
attr_accessor :number_rrc, :volume, :free_volume

def initialize (volume, free_volume)
	@volume = volume
	@free_volume = free_volume
	validate!
end

def valid?
	validate!
rescue ArgumentError
end

def validate!
	raise ArgumentError,  "Неверное значение" if @volume < 0 && @free_volume < 0
	raise ArgumentError, "Загрузка невозможна" if @free_volume == 0
	true
end

def load_volume
	@free_volume -= 1 
end

def unload_volume
	@free_volume += 1 
end

def display_occupied_volume
	occupied_volume = @volume - @free_volume
end

end

class PassRRC < Railroadcar
end

class CargoRRC < Railroadcar

	def load_volume(i)
		raise ArgumentError, "Превышен объем загрузки" if @free_volume + i > @volume
		@free_volume - i
	end

	def unload_volume(k)
		if @volume - k < 0
		false
		else 
			@free_volume += k 
		end
	end
end

