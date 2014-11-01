#Secret Number - Colette

def get_input
	gets
end

def process_guess(guess)
	if guess > 10 || guess < 1
		"1 to 10, ok?"
	elsif guess == Secret_number
    "Correct! Are you a mind reader?"
	elsif guess > Secret_number && guess <= 10
		"High as a kite."
	elsif guess < Secret_number && guess >= 1
		"Why so low?"
	else
		"You should google what is an integer."
	end
end

Secret_number = 6
puts "Try and guess my secret number?"
puts "Input an integer from 1 to 10. Decimal places are rounded down."
user_guess = get_input.to_i
result = process_guess(user_guess)
puts "I have news for you... #{result}"

