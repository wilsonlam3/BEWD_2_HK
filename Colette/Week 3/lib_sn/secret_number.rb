class SecretNumber
# this class will generate our secret number for us
	attr_accessor :num
	def initialize
		@num = rand(1..10)
	end

end
