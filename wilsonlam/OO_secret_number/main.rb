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

$:.unshift (File.dirname(__FILE__))
require 'lib/game'



	def create_playername
		print "What is your name : "
  		player = gets.strip.capitalize
  		Person.new(player)
	end



# put code here print a welcome message for your user
	print "Welcome, my name is Wilson - the creator of this Guess My Secret Number game.\n"
	print "Please enter your name as I will explain to you on how to play this game.\n"

# put code here ask the user for their name, and save it
	player = create_playername
	puts "\nHi #{player} ! Nice to interact with you."

# put code here to create a new game, and start it	
	print "Let's play this game by guessing a number between 1 and 10 \n"
	print "and you have only 3 attempts to guess it right!\n\n"
	game = Game.new(player)
	game.start_game
	puts "-- The game ends here --"

