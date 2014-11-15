require_relative 'person'
require_relative 'secret_number'

class Game
	attr_accessor :player, :num, :guess

	def initialize(name)
	  @player=Person.new(name)
	end
	def generate_num
		array=SecretNumber.new
		@num=array.random
	end
	def evaluate_num
		3.downto 1 do |count|
		  print "Guess a number: "
		  @guess = gets.chomp.to_i
		  if @num == @guess 
		  	puts "Correct, you are a genius"
		  	break
		  else 
		  	if count > 1
		  		puts "try again, You have #{count-1} more chance."
		  		hint(@guess,@num)
		  	else 
		  		puts "sorry, you lose!Gameover. The secret number is #{@num}"
		  	end
		  end
		end
	end

	def hint(guess,number)
		if guess > number 
			puts "You guess is too high"
		elsif guess < number
			puts "you guess is too low"
		end
	end
end

