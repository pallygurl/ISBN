require "minitest/autorun"
require_relative "isbnfunction.rb"

class TestIsbnFunction <Minitest::Test

	
	def test_for_10_digits_returns_valid
		number = "9874563210"
		assert_equal("Valid", isbn(number))
	end

	def test_for_13_digits_returns_valid
		number = "9632587410357"
		assert_equal("Valid", isbn(number))
	end

	def test_for_less_than_10_digits_returns_invalid
		number = "123698745"
		assert_equal("Invalid. Try again.", isbn(number))
	end	

	def test_for_more_than_13_digits_returns_invalid
		number = "15935774128635"
		assert_equal("Invalid. Try again.", isbn(number))
	end	

	def test_for_removing_non_alpha_numeric_characters
		number = "0-321-14653-0"
		assert_equal("0321146530", number_only(number))	
	end	

	

	
end	