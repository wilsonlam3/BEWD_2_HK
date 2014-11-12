require 'rest-client'
require_relative 'request'

def get_input
  print "What the name of the movie? " 
  gets.chomp
end

def retrieval(id)
	raw_data=RestClient.get('http://www.omdbapi.com/?t='+id+'&plot=short&r=json')
	data_hash=JSON.parse(raw_data)
end

title=get_input
query=Request.new(title, retrieval(title.gsub(/\ /,"+")))
print "Would you like to have a detailed output?(y/n)"
if gets.chomp.downcase=="y" then query.output.long_print else query.output.short_print end
