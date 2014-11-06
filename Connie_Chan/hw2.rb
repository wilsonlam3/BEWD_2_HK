
def player_name
	gets
end

puts "Welcome. This game is created by CC"
puts "What's your name?"
puts "Hi #{player_name}"
puts "Rules of the game: Guess the secret number between 1-10. You have 3 chances."
puts "Can you guess my secret number?"


a=9
b=0
c=3
while  b != a && c >0

puts "What's the secret number?"
	b = gets.chomp.to_f
	
		if b < a 
		puts "too low"
		c = c-1 
		puts "You have #{c} guesses before the game is over enter a another number"
		
		elsif b > a
		puts "too high"
		c = c-1
		puts "You have #{c} guesses before the game is over enter a another number"
		
		elsif b == a
		puts "correct!"
		
		end
		
	if c == 0
	puts "game over. You lost."
	end

end
