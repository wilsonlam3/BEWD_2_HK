def get_num()
	gets
end

num = 5
user_num = get_num()

if user_num.to_i == num
	puts "You won! The number was #{num}"
elsif user_num.to_i > num
	puts "A bit too high! Guess again"
elsif user_num.to_i < num
	puts "A bit to low! Guess again"
end
