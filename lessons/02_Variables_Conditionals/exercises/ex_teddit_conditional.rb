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
