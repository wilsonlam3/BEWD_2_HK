require 'json'
require 'rest-client'

class Api

  attr_accessor :name

  def initialize (name)
    @name = name
  end

  def popular_list 
    raw_data = RestClient.get("http://api.eventful.com/json/events/search?app_key=Hv67dbZgPXdVpkmg&category=music&location=Hong+Kong&page_size=3&sort_order=popularity&date=this+month")
    eventful_api = JSON.load(raw_data)
    
    puts "--------------------------------------------------"
    puts

    eventful_api["events"]["event"].each do |print_summary|
    puts "Eventful ID: #{print_summary["id"]}"
    puts "Start Date and Time: #{print_summary["start_time"]}"
    puts "Title: #{print_summary["title"]}"
    puts "Venue: #{print_summary["venue_name"]}"
    puts "Venue Address: #{print_summary["venue_address"]}"
    puts 
    end  
    
    puts "--------------------------------------------------"
  end

  def event_description
    print "Ok - Now enter an Eventful ID: "
    event_id = gets.chomp
    raw_data_event_descrip = RestClient.get("http://api.eventful.com/json/events/get?app_key=Hv67dbZgPXdVpkmg&id=#{event_id}")
    eventful_api_event_descrip = JSON.load(raw_data_event_descrip)
    puts "Title: #{eventful_api_event_descrip["title"]}"
    puts "Description: #{eventful_api_event_descrip["description"]}"
    puts "--------------------------------------------------"
    puts
    new_search
  end

  def genre_search
    puts "GENRE: Please choose one -- Classical, Pop, Rock, Jazz, Electronic, Hip Hop"

    loop do
    genre_input = gets.chomp.downcase.to_s
      if genre_input == "classical" 
        genre_input_api = "classical" 
    break
      elsif genre_input == "pop" 
        genre_input_api = "pop" 
    break 
      elsif genre_input == "rock" 
        genre_input_api = "rock" 
    break  
      elsif genre_input == "jazz" 
        genre_input_api = "jazz" 
    break  
      elsif genre_input == "electronic" 
        genre_input_api = "electronic" 
    break  
      elsif genre_input == "hip hop" 
        genre_input_api = "hip+hop" 
    break
      else
        puts "Try again - Enter Classical, Pop, Rock, Jazz, Electronic, or Hip Hop"
      end
    end

    raw_data_genre = RestClient.get("http://api.eventful.com/json/events/search?app_key=Hv67dbZgPXdVpkmg&category=music&q=#{genre_input_api}&location=Hong+Kong&page_size=10&sort_order=date&sort_direction=ascending")
    eventful_api_genre = JSON.load(raw_data_genre)

    puts "--------------------------------------------------"
    puts

    eventful_api_genre["events"]["event"].each do |print_summary_genre|
      puts "Eventful ID: #{print_summary_genre["id"]}"
      puts "Start Date and Time: #{print_summary_genre["start_time"]}"
      puts "Title: #{print_summary_genre["title"]}"
      puts "Venue: #{print_summary_genre["venue_name"]}"
      puts "Venue Address: #{print_summary_genre["venue_address"]}"
      puts 
    end  
    
    puts "--------------------------------------------------"
    new_search
  end
  # unsolved issue: If we try hip hop, there is one listing, and the code fails. That single listing seems to not be in an array, ie. hence code fails at [0]....

  def date_search
    puts "DATE: Please choose one -- This Week, Next Week, This Month, Next Month"
    date_input = gets.chomp.downcase
    loop do
      if date_input == "this week" 
        date_input_api = "this+week" 
    break
      elsif date_input == "next week" 
        date_input_api = "next+week" 
    break
      elsif date_input == "this month"
        date_input_api = "this+month"
    break
      elsif date_input == "next month"
        date_input_api = "next+month"
    break
      else
        puts "So... enter This Week, Next Week, This Month, or Next Month"
      end
    end

    raw_data_date = RestClient.get("http://api.eventful.com/json/events/search?app_key=Hv67dbZgPXdVpkmg&category=music&location=Hong+Kong&page_size=10&date=#{date_input_api}&sort_order=date&sort_direction=ascending")
    eventful_api_date = JSON.load(raw_data_date)

    puts "--------------------------------------------------"
    puts

    eventful_api_date["events"]["event"].each do |print_summary_date|
      puts "Eventful ID: #{print_summary_date["id"]}"
      puts "Start Date and Time: #{print_summary_date["start_time"]}"
      puts "Title: #{print_summary_date["title"]}"
      puts "Venue: #{print_summary_date["venue_name"]}"
      puts "Venue Address: #{print_summary_date["venue_address"]}"
      puts 
    end  
    
    puts "--------------------------------------------------"

    new_search
  end

  def new_search
    puts "Do you want to...(Enter 1, 2, or 3)"
    puts "1. Find more live music events by GENRE or by DATE"
    puts "2. Enter an Eventful ID for detailed desciption (if any available)" 
    puts "3. I'm done, exit."

    loop do
      answer = gets.chomp
      if answer == "3"
        puts "#{name}, thanks for using our service."
        exit
      elsif answer == "2"
        event_description
    break
      elsif answer == "1"
        puts "Ok - Search by GENRE or by DATE?"
        loop do 
        answer_2 = gets.chomp.downcase
        if answer_2 == "genre" 
            genre_search 
        break
          elsif answer_2 == "date" 
            date_search 
        break
          else
            puts "Enter GENRE or DATE"
          end
        end
    break
      else 
        puts "Enter 1, 2, or 3 only."
      end
    end
  end

end