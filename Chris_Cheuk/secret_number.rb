def hint(guess,number)
	if guess > number 
		puts "You guess is too high"
	elsif guess < number
		puts "you guess is too low"
end
end


puts "Welcome to the number guess game created by Chris Cheuk"
print "Now could you let me know your name?"
name= gets.chomp
puts "Welcome #{name}, you will have 3 chances to make a guess of my secret number (1-10)"

 number=5
 3.downto 1 do |count|

  print "Guess a number: "
  guess = gets.chomp.to_i
  if number == guess 
  	puts "Right, you are a genius"
  	break
  else 
  	if count > 1
  		puts "try again, You have #{count-1} more chance."
  		hint(guess,number)
  	else 
  		puts "sorry, you lose!Gameover. The secret number is #{number}"
  	end

  end

 end