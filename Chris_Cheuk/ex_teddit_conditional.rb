# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
  #Get input from the user.
  gets
end

def calculate_upvotes(story, category, upvotes)
     if category.include? 'cats'
     	upvotes*5
     elsif
     	category.include? 'bacon'
     	upvotes*8
     elsif category.include? "food"
     	upvotes*3
     else
     	upvotes
     end
 end
DEFAULT_UPVOTES = 100
puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input.chomp
puts "Please give it a category:"
category = get_input.chomp
upvotes = calculate_upvotes(story, category, DEFAULT_UPVOTES)
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"