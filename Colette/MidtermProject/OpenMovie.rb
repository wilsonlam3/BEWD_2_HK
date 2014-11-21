#Open Movie Database - API
#Colette Leung
#Main

$:.unshift (File.dirname(__FILE__))
require_relative 'Class/GetAPI.rb'
require_relative 'Class/GetInput.rb'
require_relative 'Class/Output.rb'

#Welcome user

puts 'Welcome to Open Movie Database'
puts 'Input title to get plot information'

#Get User Input
user_input = GetInput.new

#Get API
api = GetAPI.new(user_input)


#Print Output
movie = Output.new(api)
output = movie.print_summary