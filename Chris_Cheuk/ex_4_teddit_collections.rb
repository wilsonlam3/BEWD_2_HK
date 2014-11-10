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
stories=[]
puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
continue=true
while continue do
  print "Please enter a News story:"
  story= get_input
  print "Please give it a category:"
  category = get_input
  votes = calculate_upvotes(story, category)
  stories << {title: story, category: category, upvotes: votes }
  print "Would you like to add another story? Enter 'y' or 'n'"
  if get_input !='y' then continue = false end
    
end

stories.each do |array|
 puts "story: #{array[:title]}, Category:(#{array[:category]}), Current upvotes:#{array[:upvotes].to_s}"
end
