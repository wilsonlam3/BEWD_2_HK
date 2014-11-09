require 'rest-client'
require 'json'

def get_input()
  gets.chomp
end

puts "Please input a subreddit to retrieve data from: "
sr = get_input()

url = "http://reddit.com/r/#{sr}/.json"
data = RestClient.get(url)
sr_data_hash = JSON.load(data)

puts sr_data_hash

sr_data_hash["data"]["children"].each do |post|
  puts "Title: #{post["data"]["title"]}"
  puts "Author: #{post["data"]["author"]}"
  puts "\n"
end
