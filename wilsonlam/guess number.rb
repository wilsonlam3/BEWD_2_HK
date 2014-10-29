

attempts = 1
secret_number = 8

def get_input
	gets
end

def check_guess(n, secret_number, attempts)
	
	if n < secret_number
		puts "Higher...Please try again"
	elsif n > secret_number
		puts "Lower...Please try again"
	elsif n = secret_number
		puts "You guessed it right! The secret number was #{secret_number} \nYou guessed it in #{attempts} attempts"
	end
	
	attempts ++ 1

	if attempts == 6
		puts "Sorry you had reached the maximum number of tries"
		puts "The secret number was #{secret_number}"
	end

end


puts "Welcome, guess my secret number"
puts "You have only 5 attempts to guess it right!"
n = get_input.to_i

number = check_guess(n, secret_number, attempts)


