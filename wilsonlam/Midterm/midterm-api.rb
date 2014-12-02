#Create a command line application that fulfills these criteria:
#
#Takes user input and handles bad input (i.e. you expect numbers and you get a letter).
#Connects to a 3rd-party API where the call varies based on what the user gives you.
#Must be object oriented. You must instantiate modeled classes. The only file that can run without classes is your runner.
#Submitted via GitHub.
#
#
#require 'rubygems'
#require 'rest-client'
#require 'json'
$:.unshift (File.dirname(__FILE__))

require_relative 'class/output.rb'
require_relative 'class/retrieve.rb'
require_relative 'class/query.rb'

puts "The GeoNames geographical database covers all countries and contains over eight million"
puts "     placenames that are available for download free of charge.\n\n"
puts "Enter a location name, ex: \"Paris\"\, \"Hong Kong\"\, \"New York\""
print "> "

#Hube: Create and use an object that gets user input
user_query = Query.new
#puts user_query

#Hube: Create and use an object that gets API data, providing it with the user input
retrieve = Retrieve.new(user_query)
generated_data = retrieve.generate_retrieve

#Hube: Create and use an object to format and display the resulting API data
if generated_data.empty?
  puts "Sorry, your query cannot be found."  # If the user enters an invalid input or no results, the program ends
else
  output = Output.new(generated_data)
  list_data = output.generate_result
end

puts "Thank you for using Geonames Web Service"
