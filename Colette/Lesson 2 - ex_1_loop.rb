#Lesson 2 - ex_1_loop

99.downto(1) do |beer|
	if beer == 1
	 	puts "1 bottle of beer on the wall"
	 	puts "1 bottle of beer!"
	 	puts "you take one down and pass it around,"
	 	puts "No more bottles of beer on the wall :-("
	elsif beer == 2
		puts "#{beer} bottles of beer on the wall"
		puts "#{beer} bottles of beer!"
		puts "you take one down and pass it around,"
		puts "#{beer-1} bottle of beer on the wall!"
	else
		puts "#{beer} bottles of beer on the wall"
		puts "#{beer} bottles of beer!"
		puts "you take one down and pass it around,"
		puts "#{beer-1} bottles of beer on the wall!"
	end
end

	 