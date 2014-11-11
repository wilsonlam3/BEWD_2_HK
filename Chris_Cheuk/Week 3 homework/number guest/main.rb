$:.unshift (File.dirname(__FILE__))
require 'lib/game'

puts "Welcome to the number guest game created by Chris Cheuk.\nMay I know your name?"
new_game =Game.new(gets.chomp)
puts "Welcome #{new_game.player.name}, the game now begins. You will have 3 chances to make a guess of my secret number (1-10)"
new_game.generate_num
new_game.evaluate_num


