output = []

if % 3
	output << "Fizz"
end

if % 5
	output << "Buzz"
end

if % 7
	output << "Bazz"
end

if output.empty?
	puts num
else
puts output.join
end
