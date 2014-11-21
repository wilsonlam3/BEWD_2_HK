#Open Movie Database - API
#Colette Leung
#Output

class Output

attr_accessor :summary
	
	def initialize (api)
		@summary = api
	end

	def print_summary
		movie_hash = summary.urltojson
		puts "Title: #{movie_hash["Title"]}"
		puts "Year : #{movie_hash["Year"]}"
		puts "Rated : #{movie_hash["Rated"]}"
		puts "Released : #{movie_hash["Released"]}"
		puts "Runtime : #{movie_hash["Runtime"]}"
		puts "Genre : #{movie_hash["Genre"]}"
		puts "Director : #{movie_hash["Director"]}"
		puts "Writer : #{movie_hash["Writer"]}"
		puts "Actors : #{movie_hash["Actors"]}"
		puts "Plot : #{movie_hash["Plot"]}"
		puts "Language : #{movie_hash["Language"]}"
		puts "Awards : #{movie_hash["Awards"]}"
		puts "IMDB Rating : #{movie_hash["imdbRating"]}"
	end


end