# We're going to add a remote data source to pull in stories from Reddit (and if you have time, Mashable)
  # http://www.reddit.com/.json
  # http://mashable.com/stories.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'json'
require 'rest-client'

raw_data = RestClient.get ('http://www.reddit.com/.json')
story_hash = JSON.load (raw_data)

story_hash ["data"]["children"].each do |story|
	puts"Story: #{story["data"]["title"]}"
	puts"Author: #{story["data"]["author"]}"
end

