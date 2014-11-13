class SecretNumber
# this class will generate our secret number for us

attr_accessor :number_array, :secret_number
	def initialize
		@number_array = [1,2,3,4,5,6,7,8,9,10]
		@secret_number = number_array[rand(10)]
	end
end