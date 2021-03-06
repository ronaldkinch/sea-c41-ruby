# 5 points
#
# Write a program that displays the lyrics to the beloved nursery rhyme
# "3 Bottles of Beer on the Wall".
#
# Here's how the program must work:
#
#   $ ruby exercise1.rb
#   3 bottles of beer on the wall, 3 bottles of beer!
#   Take one down, pass it around, 2 bottles of beer on the wall!
#   2 bottles of beer on the wall, 2 bottles of beer!
#   Take one down, pass it around, 1 bottle of beer on the wall!
#   1 bottle of beer on the wall, 1 bottle of beer!
#   Take one down, pass it around, no more bottles of beer on the wall!
#   No more bottles of beer on the wall, no more bottles of beer!
#   Go to the store and buy some more, 3 bottles of beer on the wall!
#
# TIP: I expect you to use a loop.

def bottle(n)
  "#{n == 0 ? 'no more' : n} bottle#{n == 1 ? '' : 's'}"
end

start = 3
take = 'Take one down, pass it around, '
wall = ' of beer on the wall'
store = 'Go to the store and buy some more, '

start.downto(0) do |n|
  puts "#{take}#{bottle(n)}#{wall}!" unless n == start
  puts "#{bottle(n).capitalize}#{wall}, #{bottle(n)} of beer!"
end

puts "#{store}#{bottle(start)}#{wall}!"
