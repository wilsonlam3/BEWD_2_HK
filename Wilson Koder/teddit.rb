
# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below.
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
  gets
end

def calculate_upvotes(story, category, upvotes)
    if story.include? "cats"
        upvotes * 5
    elsif story.include? "bacon"
        upvotes * 8
    elsif story.include? "food"
        upvotes * 8
    else
        upvotes
    end
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"

puts "Would you like to submit a news story? (y/n)"
answer = get_input
if answer == "y"
    puts "Please enter a News story:"
    story = get_input
    puts "Please give it a category:"
    category = get_input
    upvotes = calculate_upvotes(story, category, 4)
    puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"
else
    # We're going to add a remote data source to pull in stories from Reddit (and if you have time, Mashable)
      # http://www.reddit.com/.json
      # http://mashable.com/stories.json
    # These stories will also be upvoted based on our rules. No more user input!

    # Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
    # Add each story to an array and display your "Front page"

    require 'json'
    require 'rest-client'

    data = RestClient.get('http://reddit.com/.json')
    reddit_hash = JSON.load(data)

    puts "Successfully loaded Reddit"

    puts "Reddit Data: "

    reddit_hash["data"]["children"].each do |story|
        puts "Title: '#{story["data"]["title"]}'"
        puts "Subreddit: '#{story["data"]["subreddit"]}'"
        puts "Author: '#{story["data"]["author"]}'"
        puts "Score: '#{story["data"]["score"]}'"
    end

    puts "Mashable Data: "

    mashable_data = RestClient.get('http://mashable.com/stories.json')
    mashable_hash = JSON.load(mashable_data)

    puts "Successfully loaded Mashable"

    mashable_hash["new"].each do |mashable|
        puts "Title: #{mashable["title"]}"
        puts "Author: #{mashable["author"]}"
        puts "Date Posted: #{mashable["post_date"]}"
    end

    puts "Sky News: "
    
    sky_data = RestClient.get('http://feeds.skynews.com/feeds/mobile/home.json')
    sky_hash = JSON.load(sky_data)

    sky_hash["category"]["stories"].each do |sky_story|
        puts "Headline: #{sky_story["headline"]}"
    end
end
