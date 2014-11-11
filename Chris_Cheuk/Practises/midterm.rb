require 'rest-client'
require 'JSON'

class Request
	attr_accessor :imdb, :title, :pLength, :output
	def initialize(imdb, title, pLength)
		@imdb=imdb
		@title=title
		@pLength=pLength
	end
end
class Output
	attr_accessor :title, :year, :rated, :released, :runtime, :genre, :director, :actors, :plot, :awards, :imdbID
	
end

def get_input
  
  print "Do you have the IMDb ID? " 
  input=gets.chomp
end

def retrieval(id)
	raw_data=RestClient.get 'http://www.omdbapi.com/?i='+id+'&plot=short&r=json'
	data_hash=JSON.parse(raw_data)
	puts data_hash
end

retrieval(get_input)