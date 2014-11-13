#Get API from REDDIT

require 'JSON'
require 'rest-client'

raw_data = RestClient.get('http://www.reddit.com/.json')
story_hash = JSON.load(raw_data)

story_hash["data"]["children"].each do |story|
	puts "Story: #{story["data"]["title"]}"
	puts "Author: #{story["data"]["author"]}"
end

