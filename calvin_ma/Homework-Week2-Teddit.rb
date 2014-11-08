
def get_input
  gets.strip
end

def calculate_upvotes(category)
  upvotes = 1
  if category.downcase.include? 'cat'
    upvotes *= 5
  elsif category.downcase.include? 'bacon'
    upvotes *= 8
  elsif category.downcase.include? "food"
    upvotes *= 3
  else
    upvotes
  end
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
replay_answer = "Y"
stories_array = []

while replay_answer == "Y"

  print "Please enter a News story: "
  story = get_input
  print "Please give it a category: "
  category = get_input
  upvotes = calculate_upvotes(category)

  stories_hash = {story: story, category: category, upvotes: upvotes}
  stories_array.push(stories_hash)

  print "New story added! Would you like to enter another story? (Y or N): "
  loop do
    replay_answer = gets.chomp.upcase
    if replay_answer == "Y"
  break
    elsif replay_answer == "N"
    puts "You chose No. Let's see all the news you've inputted below:"
    puts
  break
    else
    print "Please just input Y or N: "
    end
  end

end

stories_array.each do |teddit|
puts "Story: #{teddit[:story]}, Category: #{teddit[:category].capitalize}, Current Upvotes: #{teddit[:upvotes]}"
end