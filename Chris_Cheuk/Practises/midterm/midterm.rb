require 'rest-client'
require_relative 'request'
require_relative 'output'

def get_input
  print "What the name of the movie? " 
  gets.chomp
end

def retrieval(id)
	raw_data=RestClient.get('http://www.omdbapi.com/?t='+id+'&plot=short&r=json')
	data_hash=JSON.parse(raw_data)
	data_hash
end

title=get_input
query=Request.new(title, retrieval(title.gsub(/\ /,"+")))

query.output.short_print
puts query.output.director.class