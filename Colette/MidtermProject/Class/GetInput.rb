#Open Movie Database - API
#Colette Leung
#GetInput

class GetInput

attr_accessor :input
	
	def initialize
		@input = gets.chomp.gsub(/\s+/, "+")
	end

	def to_s
		'http://www.omdbapi.com/?t='+input+'&y=&plot=long&r=json'
	end

end