class Person
	attr_accessor :name, :credit_score, :gender


	def initialize(name, credit_score, gender)
		@renter = name
		@credit_score = credit_score
		@gender = gender
	end

	def to_s
		"Renter: #{@renter}   Gender: #{@gender}   Credit Score: #{@credit_score}."
	end
end