month_day = { jan: 31, feb: 28, mar: 31, apr: 30}

month_day.each do |key, value|
	puts key if value == 30 
end