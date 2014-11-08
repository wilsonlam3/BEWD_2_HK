# Write a program that prints 99 bottles of beer on the wall.
# The song starts with
# 99 bottles of beer on the wall
# 99 bottles of beer!
# You take one down and pass it around,
# 98 bottles of beer on the wall!
#
# And ends with
# 1 bottle of beer on the wall
# 1 bottle of beer!
# You take one down and pass it around,
# No more bottles of beer on the wall :-(


99.downto(1) do |beer|
  if beer > 1
      puts "#{beer} bottles of beer on the wall"
      puts "#{beer} bottles of beer!"
      puts "You take one down and pass it around,"
      if beer == 2
        puts "#{beer-1} bottle of beer on the wall!"
      else
        puts "#{beer-1} bottles of beer on the wall!"
      end
  end

  if beer==1
        puts "#{beer} bottle of beer on the wall"
        puts "#{beer} bottle of beer!"
        puts "You take one down and pass it around,"
        puts "No more bottles of beer on the wall :-("
      else
  end
end
