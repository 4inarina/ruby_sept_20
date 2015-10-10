class Railroadcar
attr_accessor :number_rrc, :volume, :free_volume

def initialize (volume, free_volume)
	@volume = volume
	@free_volume = free_volume
end

def load_volume
	if @free_volume == 0
		puts "Мест нет"
	else @free_volume -= 1 
	end	
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
		if @free_volume + i > @volume
		puts "Превышен объем загрузки"
		else 
			@free_volume - i
		end
	end

	def unload_volume(k)
		if @volume - k < 0
		puts "Не может быть"
		else 
			@free_volume += k 
		end
	end
end

