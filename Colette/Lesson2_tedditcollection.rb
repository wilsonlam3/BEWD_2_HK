# Part 1: Working with Arrays and Hashes
#
# 1. Copy your solution from conditional_teddit.rb.
# 2. Create an empty stories array. This will be used to hold all stories we capture.
# 3. Users enter the story as they do now, but it gets put in a hash instead.
# 4. Update any reference to the story (upvotes, category and title)
# 5. Your story hash should look like the one below:
#   { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# 6. Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# 7. Using the stories array, test your cat, bacon, and food upvote conditional logic.
#
# Part 2: Adding Loops
# 1. Use a loop so that your program continues to ask a user for stories until they choose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# 2. Once the user is finished with entering their stories, use .each to print each story in the stories array.

# Teddit Contionals - Solution Code.

# Let's add a new Teddit feature. Upvotes!

def get_input
  gets.strip
end

def calculate_upvotes(title, category)
  upvotes = 1

  if title.downcase.include? 'cat'
    upvotes *= 5
  elsif title.downcase.include? 'bacon'
    upvotes *= 8
  end

  if category.downcase == "food"
    upvotes *= 3
  end

  upvotes
end

story = []
response = "y"

until response == "n"
	puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
	puts "Please enter a News story:"
	title = get_input
	puts "Please give it a category:"
	category = get_input
	upvotes = calculate_upvotes(title, category)
	storyhash = {"title" => title, "category" => category, "upvotes" => upvotes}
	story << storyhash
	puts "Would you like to add another story? Enter 'y' or 'n'."
	response = get_input
end

story.each do |storyhash|
	puts "Story: #{storyhash['title']}, Category: (#{storyhash['category'].capitalize}), Current Upvotes: #{storyhash['upvotes']}"
end