#Open Movie Database - API
#Colette Leung
#Main

$:.unshift (File.dirname(__FILE__))
require 'Class/GetAPI.rb'
require 'Class/GetInput.rb'
require 'Class/Output.rb'

#Welcome user

puts 'Welcome to Open Movie Database'
puts 'Input title to get plot information'

movie = Output.new
output = movie.print_summary