# Back-End Web Development - Homework 3

#The purpose of this homework is to practice manipulating data retrieved from third-party APIs.

#1. Retrieve the list of HK government notifications from the API described in:
#   [http://www.gov.hk/en/theme/psi/datasets/govhknotilist.htm](http://www.gov.hk/en/theme/psi/datasets/govhknotilist.htm)
#2. Use the data retrieved from the API call to request details of each
#   notification using the API described in:
#   [http://www.gov.hk/en/theme/psi/datasets/govhknotidetails.htm](http://www.gov.hk/en/theme/psi/datasets/govhknotidetails.htm)
#3. Your program should print a short summary of each notification in a single language of your choice.

# ans
require 'json'
require 'rest-client'

#change it to string
raw_data = RestClient.get("http://ogcmn.one.gov.hk/ogcmn/service/list/catwc/OGCMN*?lang=sc&max=10").to_s

# cut the NotiList part
raw_data.slice! "NotiList("
raw_data.slice! ");"

# Creating a JSON string for communication
raw_data.to_json
noti_hash = JSON.load(raw_data)


noti_hash["notifications"].each do |summary|
	puts "ID: #{summary["id"]}"
	puts "Subject :#{summary["subject"]}"
end

# get user input
def user
	gets
end

puts "Please enter a ID for summary:"
id = user
# change it to string
summary_data = RestClient.get ("http://ogcmn.one.gov.hk/ogcmn/service/noti/detail/#{id}").to_s

# Again, cut the NotiList part
summary_data.slice! "NotiList("
summary_data.slice! ");"

# Creating a JSON string for communication
summary_data.to_json
noti_hash = JSON.load(summary_data)

puts "Summary: "
puts summary_data
# is this okay?

