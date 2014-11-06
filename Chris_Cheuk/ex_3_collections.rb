#Arrays and Hashes
#TIME: 25 min

# If you call `puts` without any parameters, it will output an empty line
# Use that to space out your output nicely

################
# Example 1:
#   Print the name of each of these HK regions
####################
locations = ["Hong Kong Island", "Kowloon", "New Territories", "Outlying Islands"]
locations.each{|location| puts location}
puts

################
# Example 2
#   This works with Hashes as well
################
coworking_spaces = {central: "Garage Society", tin_hau: "CoCoon", sheung_wan: "Paperclip", cheung_sha_wan: "Good Lab"}
coworking_spaces.each {|district, space| puts "#{space} is in #{district}"}
puts

################
# Example 3
#   What about an array of hashes?
################
tv_shows = [
  {"show_name" => "Teenage Mutant Ninja Turtles", "protagonist" => "Michelangelo, Donatello, Raphael, Leonardo"},
  {"show_name" => "Breaking Bad", "protagonist" => "Walter White, Jesse Pinkman, ..."},
  {"show_name" => "The Walking Dead", "protagonist" => "Rick and his fellow survivors"}
]

tv_shows.each do |show|
  puts "#{show['show_name']} follows the story of #{show['protagonist']}"
end
puts

################
# Example 4
#   What about a hash with an array as a value?
################
recipe = {name: "Key Lime Pie",
          description: "Key lime pie is an American dessert made of key lime juice, egg yolks, and sweetened condensed milk in a pie crust.",
          ingredients: ["Eggs",
                        "Key lime juice",
                        "Condensed Milk",
                        "Graham cracker crust"]
}

puts "Title: #{recipe[:name]}\nDescription: #{recipe[:description]}\nIngredients: "
recipe[:ingredients].each{|ingredient| puts ingredient}
puts

################
# Example 5
#   A collection similar to a Twitter API response (only the revelant parts are present)
################
tweets = {
  "results" =>[
    {
      "from_user" => "SFist",
      "text" => "Reminder: Blue Angels practice today http://t.co/L9JXJ2ee",
    },
    {
      "from_user" => "masters212",
      "text" => "Starting to hear Blue Angels... Not such angels with all of the noise and carbon pollution.",
    },
    {
      "from_user" => "SFBayBridge",
      "text" => "BZZZzzzZzZzzzZZZZZzZz WHAT? I CAN'T HEAR YOU. THERE ARE BLUE ANGELS. ZZZzzZZZ!",
    },
    {
      "from_user" => "OnDST",
      "text" => "SF Fleet Week to open with Blue Angels flyovers | Student ...",
    },
    {
      "from_user" => "gusbumper",
      "text" => "RT @gzahnd: WAKE UP HIPPIES, THE BLUE ANGELS ARE IN TOWN!",
    },
    {
      "from_user" => "LUVTQUILT",
      "text" => "Thursday - Just watched the Blue Angels practice over SF Bay Impressive! What a background.  GGB & Alcatraz. ;) .",
    },
    {
      "from_user" => "johnnyfuncheap",
      "text" => "10/8/11: Blue Angels Wine Tasting | Treasure Island http://t.co/fyL8Rs5f",
    },
    {
      "from_user" => "espenorio",
      "text" => "San Francisco 2010 Fleet week photos and video http://t.co/KfzEqOWM",
    }
  ],
}

tweets["results"].each do |tweet|
  puts "Tweet from #{tweet['from_user']}: #{tweet['text']}"
end