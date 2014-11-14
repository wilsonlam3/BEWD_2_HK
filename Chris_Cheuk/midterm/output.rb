class Output
	attr_accessor :title, :year, :rated, :released, :runtime, :genre, :director, :actors, :plot, :awards, :imdbID
	def initialize(title,year,rated,released,runtime,genre,director,actors,plot,awards,imdbID)
		@title=title
		@year=year
		@rated=rated
		@released=released
		@runtime=runtime
		@genre=genre
		@director=director
		@actors=actors
		@plot=plot
		@awards=awards
		@imdbID=imdbID

	end
	def short_print
		puts "------------the output is as below------------"
		puts "Title: #{title}"
		puts "Year: #{year}"
		puts "Director: #{director}"
		puts "Plot: #{plot}"
	end
	def long_print
		puts "------------the output is as below------------"
		puts "Title:#{title} \nYear: #{year}\nRated: #{rated}\nReleased: #{released}\nRuntime: #{runtime}\nGenre: #{genre}\nDirector: #{director}\nActors: #{actors}\nPlot: #{plot}\nAwards: #{awards}\nIMDdID: #{imdbID} "
	end


end