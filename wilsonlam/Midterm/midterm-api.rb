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
print_output = Output.new
show_output = print_output.generate_result

puts "Thank you for using Geonames Web Service"
