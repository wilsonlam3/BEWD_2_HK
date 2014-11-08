#Secret Number - Colette

def get_input
	gets
end

def process_guess(guess,result)
	if guess > 10 && guess < 1
		result = "1 to 10, ok?"
	elsif guess == Secret_number
		result = "Correct! Are you a mind reader?"
	elsif guess > Secret_number && guess <= 10
		result = "High as a kite."
	elsif guess < Secret_number && guess >= 1
		result = "Why so low?"
	else
		result = "You should google what is an integer."
	end
end

Secret_number = 6
puts "Try and guess my secret number?"
puts "Input an integer from 1 to 10. Decimal places are rounded down."
guess = get_input.to_i
result = process_guess(guess,Secret_number)
puts "I have news for you... #{result}"

