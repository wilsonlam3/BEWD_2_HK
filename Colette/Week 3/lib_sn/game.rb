$:.unshift (File.dirname(__FILE__))
require 'lib_sn/person'
require 'lib_sn/secret_number'

class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly

	attr_accessor :user, :number, :secret

	def initialize(user_name)
		@user = Person.new(user_name)
		@number = SecretNumber.new
		@secret = number.num
	end

## Evaluates guess

	def process_guess(guess)
		if guess > 10 || guess < 1
			"An integer from 1 to 10, ok?"
		elsif guess > @secret && guess <= 10
			"Too high."
		else # guess < Secret_number && guess >= 1
			"Too low."
		end
	end

## Gives appropriate output for number of chances left

	def chance_left(count)
		if count == 3
			"Game over. The secret number is #{@secret}."
		else
			"You have #{3-count} chance#{"s" if count < 2} remaining."
		end
	end

	def play
		puts "Input an integer from 1 to 10. Decimal places are rounded down."
		puts "You have 3 chances."
		count = 1
		until count > 3
			guess = gets.to_i
			if @secret == guess
				puts "Correct! Good Job!"
				break
			else 
				puts "#{process_guess(guess)} #{chance_left(count)}"
			end
			count +=1
		end	
	end
end

