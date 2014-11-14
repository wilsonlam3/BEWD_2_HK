# Player
#  Should initialize the player's name.
#
class Person
# this class will likely be simple, and just remember its name
  attr_accessor :player_name

  	def initialize(player)
 		@player_name = player 		# stores the player name
  	end

	def to_s
		"#{@player_name}"
	end
	
end