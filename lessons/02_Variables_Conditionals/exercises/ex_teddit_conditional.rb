# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
  #Get input from the user.
end

def calculate_upvotes(story, category)
	# Write code so that:
		# If the Story is about cats multiply the upvotes by 5
		# If the Story is about bacon multiply the upvotes by 8
		# If the Story is about Food it gets 3 times the upvotes.

	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
<<<<<<< HEAD

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
=======
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(story, category)
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"
>>>>>>> a4f5d27be987d2fe2858e8d1edbef36bc42eac5e
