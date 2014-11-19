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


# Teddit Conditionals - Solution Code.

# Let's add a new Teddit feature. Upvotes!


def get_input
  gets.strip
end

def calculate_upvotes(story, category)
  upvotes = 1

  if story.downcase.include? 'cat'
    upvotes *= 5
  elsif story.downcase.include? 'bacon'
    upvotes *= 8
  end

  if category.downcase == "food"
    upvotes *= 3
  end

  upvotes
end

# 2. Create an empty stories array. This will be used to hold all stories we capture.
stories_array = Array.new
add_more = "Y"    # Local variables, holds the user response


puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"

while add_more == "Y"

  puts "Please enter a News story:"
  story = get_input.capitalize
  puts "Please give it a category:"
  category = get_input.capitalize

  upvotes = calculate_upvotes(story, category)

# 5. Your story hash should look like the one below:
#   { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
  stories_hash = {story: "#{story}" , category: "#{category}" , upvotes: "#{upvotes}"}
### Or as:
###  stories_hash = {story: story , category: category , upvotes: upvotes}

# 6. Add the hash to an array called stories 
#   and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"

  stories_array.push(stories_hash)
### Or as:
###  stories_array << stories_hash

### Or you can replace the above two statements simply as:
### stories_array << {"story" => story , "category" => category , "upvotes" => upvotes} 

# Part 2: Adding Loops
# 1. Use a loop so that your program continues to ask a user for stories until they 
#    choose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# 2. Once the user is finished with entering their stories, use .each to print each story in the stories array.

    prompt = "> "
    puts "New story added!"
    puts "Would you like to add another story? Enter 'y' or 'n'"
    print prompt

    loop do
      add_more = get_input.capitalize.chomp
      if add_more == "Y" or add_more == "N"
          break    # break out the loop do condition with correct user input
      else
          puts "Please enter 'y' or 'n'"    # loop while getting the correct user input
          print prompt                      # print the prompt so that the user knows to re-enter input
      end
    end
end

puts "Here are the summary of stories you added :"
stories_array.each do |index|
  puts "Story: \"#{index[:story]}\" , Category: #{index[:category]}, Current Upvotes: #{index[:upvotes]}" 
### If using the alternative way, replace with this : 
### puts "Story: \"#{index['story']}\" , Category: #{index['category']}, Current Upvotes: #{index['upvotes']}" 
end
