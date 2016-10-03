def isbn(number)
	if number.length == 10 || number.length == 13
		"Valid"
	elsif number.length <= 9
		"Invalid. Try again."
	elsif number.length >= 13
		"Invalid. Try again."
	end

end	

def number_only(number)
	number = number.gsub(/[^0-9X]/i, "")
end	

def string_split(number)
	array = number.split(//,)	 
	array = array.map(&:to_i) 
end