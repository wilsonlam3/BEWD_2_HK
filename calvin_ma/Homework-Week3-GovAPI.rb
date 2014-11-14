require 'json'
require 'rest-client'

getid_api = RestClient.get("http://ogcmn.one.gov.hk/ogcmn/service/list/catwc/OGCMN*?lang=en")
getid_hash = JSON.load(getid_api[29...-3])

puts "Hello. Here are the latest notifications from the government."
puts

getid_hash.each do |print_id|
	puts "NOTIFICATION ID: #{print_id["id"]}"
	puts "SUMMARY: #{print_id["subject"]}"
	puts "TIME STAMP: #{print_id["schedule_ts"]}"
	puts
end

print "Please enter a Notification ID for further details: "
enter_id = gets

lookupid_api = RestClient.get("http://ogcmn.one.gov.hk/ogcmn/service/noti/detail/#{enter_id}")
lookupid_hash = JSON.load(lookupid_api[14...-2])
lookupid_hash2 = JSON.load(lookupid_hash["msg_en"])

puts "NOTIFICATION ID: #{lookupid_hash["id"]}"
puts "NOTIFICATION DETAILS: #{lookupid_hash2["body"][0]["val"]}"

# I think somehow the hash inside lookupid_hash["msg_en"] is not recognized as a hash. 
# I cannot call out lookupid_hash["msg_en"]["body"] or lookupid_hash["msg_en"]["body\\"]
# And the pry format after parsing lookupid_api suggests the hash isn't recognized.
# Hence I decided to parse lookupid_hash["msg_en"]. 
# Are there alternative/better solutions? 