###############################################################################
#
# Introduction to Ruby on Rails
#
# Object Oriented Secret Number
#
# Read the hints below and complete this file. This homework
# is to practice your knowledge of object oriented programming.
#
###############################################################################
# Let's create an Object Oriented version of our Secret Number Game.
#
# Your updated game should have 4 classes (Main, SecretNumber, Game and Player)
#
# Below is a description of each class and some guidelines for each.
#
# Main
# The main class is where the game begins. This class should tell the player who made it.
# Ask the player for their name and instantiate the Game class.
#
# SecretNumber
#   This class should initiate an array of numbers that range between 1 - 10.
#   Use a method from the array class to select a random element from that array. This random number will be the secret number.
#   This way the secret number is also a secret to you.
#
# Player
#  Should initialize the player's name.
#
# Game
# This class holds most of the game logic and should:
#   Welcome players and inform them of the game rules.
#   Initialize the Player class.
#   Initialize the SecretNumber class.
#   Prompt the user to choose a number, verify if the user guessed correctly.
#   If the user guesses incorrectly let them know if they were too high or too low.
#   Monitor how many guesses the player has before the game is over.
#
# In creating your game, make sure it uses arrays or hashes as appropriate and
# all functionality is wrapped in methods. Add helpful comments to your code to
# document what each section does.
#
# Tips: Copy paste your code from homework 1 where necessary.



def player_name
	gets
end

puts "Welcome. This game is created by CC"
puts "What's your name?"
puts "Hi #{player_name}"
puts "Rules of the game: Guess the secret number between 1-10. You have 3 chances."
puts "Can you guess my secret number?"


a=9
b=0
c=3
while  b != a && c >0

puts "What's the secret number?"
	b = gets.chomp.to_f
	
		if b < a 
		puts "too low"
		c = c-1 
		puts "You have #{c} guesses before the game is over enter a another number"
		
		elsif b > a
		puts "too high"
		c = c-1
		puts "You have #{c} guesses before the game is over enter a another number"
		
		elsif b == a
		puts "correct!"
		
		end
		
	if c == 0
	puts "game over. You lost."
	end

end
