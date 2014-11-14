$:.unshift (File.dirname(__FILE__))

require 'lib/person'
require 'lib/secret_number'
require 'lib/game'

puts "Welcome to the Secret Number Guessing game created by Calvin."


print "Please enter your name: "
name = gets.chomp.to_s
player_name = Person.new(name)
puts "Hi #{name}! Now let's start."
# How come error occurs when I do... (a) puts "#{person.name}" or puts "#{player_name}"?

new_game = Game.new(name)
new_game.play_game

print "Do you want to play again? (Y or N): "
loop do 
	replay_answer = gets.chomp.upcase
	if replay_answer == "Y" 
		puts "You chose Yes. Sure, let's play again. A new number has been chosen for you to guess.\n\n"
		new_game.play_game
	break
	elsif replay_answer == "N" 
		puts "You chose No. See you next time then."
		exit
	else 
		print "Please just input Y or N: "
	end
end