alphabet = ("a".."z").to_a
glasnye = ["a", "e", "i", "o", "y", "u"]
result = {}
value = 0 
alphabet.each do |key|
	value = value + 1
result[key] = value if glasnye.include?(key)
end
puts result.inspect
