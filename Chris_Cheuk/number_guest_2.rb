def get_input
	puts "Enter a number"
	x = gets.to_i(10)
	#return x

end
def number_guest()
	correct=false
	a=get_input
	while correct==false
		if a == rand(10)
			print "You are right"
			correct=true
		else
			puts "no"
			a=get_input
		end
	end
end

number_guest