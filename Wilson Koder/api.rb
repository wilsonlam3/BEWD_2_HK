require 'rest-client'
require 'json'

def get_input()
    gets
end

notification_data = RestClient.get("http://ogcmn.one.gov.hk/ogcmn/service/list/catwc/OGCMN*?.json").to_s
notification_data.slice! "NotiList("
notification_data.slice! ");"
notification_data.to_json
#puts notification_data
notification_hash = JSON.load(notification_data)

puts 'API Response: '

notification_hash["notifications"].each do |notification|
    puts "ID: #{notification["id"]}"
    puts "Subject: #{notification["subject"]}"
end

puts "Enter a Notification ID for more info: "
id = get_input()
detailed_data = RestClient.get('http://ogcmn.one.gov.hk/ogcmn/service/noti/detail/#{id}').to_s
detailed_data.slice! "NotiList("
detailed_data.slice! ");"
detailed_data.to_json
detailed_hash = JSON.load(detailed_data)

puts "API Responese: "

puts detailed_hash
puts "subject_en: #{notification_hash["subject_en"]}"
puts "subject_tc: #{notification_hash["subject_tc"]}"
puts "subject_sc: #{notification_hash["subject_sc"]}"
