puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"

require 'json'
require 'rest-client'

raw_data = RestClient.get("http://www.reddit.com/.json")
story_hash = JSON.load(raw_data)

story_hash["data"]["children"].each do |print_story|
  puts "Story: #{print_story["data"]["title"]}"
  print "Author: #{print_story["data"]["author"]}, "
  print "Subreddit: #{print_story["data"]["subreddit"]}, "
  
  subreddit = print_story["data"]["subreddit"]
  upvotes = print_story["data"]["ups"]
  if subreddit.downcase.include? "cat" 
      upvotes *= 5
      puts "Upvotes: #{upvotes}"
    elsif subreddit.downcase.include? "bacon"
      upvotes *= 8
      puts "Upvotes: #{upvotes}"
    elsif subreddit.downcase.include? "food"
      upvotes *= 3
      puts "Upvotes: #{upvotes}"
    else
      puts "Upvotes: #{upvotes}"  
  end
  puts
end