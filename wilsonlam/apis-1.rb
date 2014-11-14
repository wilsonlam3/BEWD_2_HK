# The purpose of this homework is to practice manipulating data retrieved from third-party APIs.
#
# Retrieve the list of HK government notifications from the API described in: http://www.gov.hk/en/theme/psi/datasets/govhknotilist.htm
# Use the data retrieved from the API call to request details of each notification using the API described in: http://www.gov.hk/en/theme/psi/datasets/govhknotidetails.htm
# Your program should print a short summary of each notification in a single language of your choice.


require 'rubygems'
require 'rest_client'
require 'json'

# parsed_array = Array.new

url_1 = 'http://ogcmn.one.gov.hk/ogcmn/service/list/catwc/OGCMN*?.json'

# NotiList({"notifications":[{"id":8380601,"subject":"(d) Suspended or Diverted GMB Routes: Hong Kong Island - The routeing of the following GMB routes are diver...","schedule_ts":1415803574000,"exp_ts":1415825173000,"source_id":"TD0001"},{"id":8337101,"subject":"Traffic on Leighton Road and road sections in Causeway Bay area has resumed normal.","schedule_ts":1415767601000,"exp_ts":1415789201000,"source_id":"TD0001"},{"id":8336271,"subject":"Roadside Air Quality Health Index (AQHI) at HIGH level","schedule_ts":1415766961000,"exp_ts":1415853301000,"source_id":"EPD005"},{"id":8333961,"subject":"Due to heavy traffic, road sections in Causeway Bay area (such as Leighton Road) are busy. Motorists passin...","schedule_ts":1415765005000,"exp_ts":1415786605000,"source_id":"TD0001"},{"id":8330355,"subject":"Due to heavy traffic, road sections in Causeway Bay and Wan Chai area (such as Fleming Road, Canal Road Fly...","schedule_ts":1415761991000,"exp_ts":1415783591000,"source_id":"TD0001"},{"id":8323683,"subject":"Due to heavy traffic, road sections in Causeway Bay area (such as Canal Road Flyover, Gloucester Road, Henn...","schedule_ts":1415756501000,"exp_ts":1415778100000,"source_id":"TD0001"},{"id":8319699,"subject":"Due to heavy traffic, road sections in Causeway Bay area (such as Hennessy Road, Percival Street and Leight...","schedule_ts":1415753531000,"exp_ts":1415775131000,"source_id":"TD0001"},{"id":8316555,"subject":"All lanes of the slip road leading from West Kowloon Corridor to Prince Edward Road West Mong Kok bound whi...","schedule_ts":1415751130000,"exp_ts":1415772730000,"source_id":"TD0001"},{"id":8315827,"subject":"Due to traffic accident, all lanes of Slip Road leading from West Kowloon Corridor to Prince Edward Road We...","schedule_ts":1415750530000,"exp_ts":1415772130000,"source_id":"TD0001"},{"id":8314643,"subject":"Due to heavy traffic, Island Eastern Corridor Wan Chai bound near North Point Ferry Pier is busy. Motorists...","schedule_ts":1415749586000,"exp_ts":1415771185000,"source_id":"TD0001"}]});

url_1 = RestClient.get(url_1)		# Before parse
# puts url_1

# parsed_url_1 = JSON.parse(url_1[12..-3])	# Trim the string, put it into a hash

# puts parsed_url_1

json1 = JSON.parse(url_1[29..-4])
# puts json1


url_2 = 'http://ogcmn.one.gov.hk/ogcmn/service/noti/detail/'
# puts url_2

array_json2 = Array.new

# NotiDetail({"id":8337101,"subject_en":"Traffic on Leighton Road and road sections in Causeway Bay area has resumed normal.","subject_sc":"因車多關係，現時銅鑼灣一帶多條主要道路(例如禮頓道)交通繁忙。駕駛人士行經...","subject_tc":"現時禮頓道及銅鑼灣一帶路段的交通已恢復正常。","msg_en":"{\"type\":\"R\",\"body\":[{\"type\":\"P\",\"val\":\"Traffic on Leighton Road and road sections in Causeway Bay area has resumed normal.\",\"alt\":\"\"}]}","msg_sc":"{\"type\":\"R\",\"body\":[{\"type\":\"P\",\"val\":\"因車多關係，現時銅鑼灣一帶多條主要道路(例如禮頓道)交通繁忙。駕駛人士行經上述路段敬請忍讓及小心駕駛，並考慮使用其他道路。\",\"alt\":\"\"}]}","msg_tc":"{\"type\":\"R\",\"body\":[{\"type\":\"P\",\"val\":\"現時禮頓道及銅鑼灣一帶路段的交通已恢復正常。\",\"alt\":\"\"}]}","schedule_ts":1415767601000,"exp_ts":1415789201000,"source_id":"TD0001"});

json1.each do |item|
	mrge_str = RestClient.get("#{url_2}#{item['id']}")
	json2 = JSON.parse(mrge_str[14..-3])
#	puts json2
	array_json2 << json2
end


# {"id"=>8380601, "subject_en"=>"(d) Suspended or Diverted GMB Routes: Hong Kong Island - The routeing of the following GMB routes are diver...", "subject_sc"=>"(d) 暫停服務或改道的專線小巴路線: 香港島 - 以下專線小巴路線改道：1, 1A, 2, 3, 3...", "subject_tc"=>"(d) 暫停服務或改道的專線小巴路線: 香港島 - 以下專線小巴路線改道：1, 1A, 2, 3, 3...", "msg_en"=>"{\"type\":\"R\",\"body\":[{\"type\":\"P\",\"val\":\"(d) Suspended or Diverted GMB Routes: Hong Kong Island - The routeing of the following GMB routes are diverted: 1, 1A, 2, 3, 3A, 8 (Lower Baguio Villa Bound), 9, 22, 22S, 24A and 24M; Kowloon - The routeing of the following GMB routes are diverted: 5M, 12A, 12B, 27M, 28M, 30A and 79K. Please see ‘‘GMB routes suspension or diversion due to emergency incidents in Admiralty and other urban areas (13 Nov 2014) ’’ in the following link: http://www.td.gov.hk/filemanager/en/content_13/gmb_20141113_0630.pdf\",\"alt\":\"\"}]}", "msg_sc"=>"{\"type\":\"R\",\"body\":[{\"type\":\"P\",\"val\":\"(d) 暫停服務或改道的專線小巴路線: 香港島 - 以下專線小巴路線改道：1, 1A, 2, 3, 3A, 8(往下碧瑤灣方向), 9, 22, 22S, 24A及24M; 九龍 - 以下專線小巴路線改道：5M, 12A, 12B, 27M, 28M, 30A及79K。 詳見 “因應金鐘及市區其他地方發生的突發事故而暫停服務或改道的專線小巴路線 (2014年11月13日)” 於以下網址: http://www.td.gov.hk/filemanager/tc/content_13/gmb_20141113_0630.pdf\",\"alt\":\"\"}]}", "msg_tc"=>"{\"type\":\"R\",\"body\":[{\"type\":\"P\",\"val\":\"(d) 暫停服務或改道的專線小巴路線: 香港島 - 以下專線小巴路線改道：1, 1A, 2, 3, 3A, 8(往下碧瑤灣方向), 9, 22, 22S, 24A及24M; 九龍 - 以下專線小巴路線改道：5M, 12A, 12B, 27M, 28M, 30A及79K。 詳見 “因應金鐘及市區其他地方發生的突發事故而暫停服務或改道的專線小巴路線 (2014年11月13日)” 於以下網址: http://www.td.gov.hk/filemanager/tc/content_13/gmb_20141113_0630.pdf\",\"alt\":\"\"}]}", "schedule_ts"=>1415803574000, "exp_ts"=>1415825173000, "source_id"=>"TD0001"}
puts " HK government notifications : "

array_json2.each do |item|
    puts "ID: #{item['id']}"
	puts "Subject_EN: #{item['subject_en']}"
#	puts "Subject_SC: #{item['subject_sc']}"
#	puts "Subject_TC: #{item['subject_tc']}"
	puts "Message_EN: #{item['msg_en']}"
#	puts "Message_SC: #{item['msg_sc']}"
#	puts "Message_TC: #{item['msg_tc']}"
	puts "Schedule_TS: #{Time.at(item['schedule_ts']/1000)}"
	puts "Exp_TS: #{Time.at(item['exp_ts']/1000)}"
	puts "Source_ID: #{item['source_id']}"
	puts
end






#parsed_url_1["notifications"].each do |item|
#    puts "ID: #{item['id']}"
#	puts "Subject: #{item['subject']}"
#	puts "Schedule_TS: #{Time.at(item['schedule_ts']/1000)}"
#	puts "Exp_TS: #{Time.at(item['exp_ts']/1000)}"
#	puts "Source_ID: #{item['source_id']}"
#end
