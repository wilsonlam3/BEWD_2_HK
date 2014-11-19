#
# SecretNumber
#   This class should initiate an array of numbers that range between 1 - 10.
#   Use a method from the array class to select a random element from that array. This random number will be the secret number.
#   This way the secret number is also a secret to you.
#
class SecretNumber
# this class will generate our secret number for us
	attr_accessor :secret_number

	def initialize(random_secretnumber)
		@random_secretnumber = Array.new
	end


	def create_secretnumber
		array_numbers = Array.new 
  		1.upto(10) do |num|						# Generate an array (array_numbers) of numbers from 1 to 10
  			array_numbers << num 				# Push it into array_numbers array
  		end
		random_secretnumber = array_numbers.sample 	# Randomly select a number from array_numbers array
	#puts random_secretnumber
	end

end
