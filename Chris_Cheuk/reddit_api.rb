require 'rest-client'
require 'json'

def calculate_upvotes(story, category)
  upvotes = 1
  if story.downcase.include? 'rich'
    upvotes *= 5
  elsif story.downcase.include? 'picture'
    upvotes *= 8
  end
  if category.downcase == "creepy"
    upvotes *= 3
  end
  upvotes
end

raw_data = RestClient.get('http://www.reddit.com/.json')

story_hash = JSON.load(raw_data)


story_hash["data"]["children"].each do |array|
	print array["data"]["author"] + ": "
	puts array["data"]["title"]
	print array["data"]["subreddit"] + "  "
	puts "upvotes:   #{calculate_upvotes(array["data"]["title"],array["data"]["subreddit"])}"
	puts
end
