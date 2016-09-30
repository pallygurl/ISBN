def isbn(number)
	if number.length == 10 || number.length == 13
		"Valid"
	elsif number.length <= 9
		"Invalid. Try again."
	elsif number.length >= 14
		"Invalid. Try again."
	end

end		