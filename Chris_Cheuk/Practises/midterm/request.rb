require_relative 'output'
class Request
	attr_accessor :title, :output, :returned_hash
	def initialize(title, hash)
		@title=title
		@returned_hash=hash
		@output=Output.new(@returned_hash["Title"],@returned_hash["Year"],@returned_hash["Rated"],@returned_hash["Released"],@returned_hash["Runtime"],@returned_hash["Genre"],@returned_hash["Director"],@returned_hash["Actors"],@returned_hash["Plot"],@returned_hash["Awards"],@returned_hash["imdbID"])
	end

end