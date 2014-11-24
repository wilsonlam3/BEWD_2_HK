$:.unshift (File.dirname(__FILE__))

require 'lib/api'
require 'json'
require 'rest-client'

puts
puts "Welcome to HK Live Music Calendar (Text-based...for now), powered by Eventful."
print "Before we get started, what is your name?: "
name = gets.chomp.to_s
puts "Hi #{name}!  To start with, here are the 3 most popular live music events upcoming this month."
puts

run_search = Api.new(name)
run_search.popular_list
run_search.new_search