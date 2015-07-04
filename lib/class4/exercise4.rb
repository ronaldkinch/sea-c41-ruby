#!/usr/bin/env ruby
#
# 5 points
#
# In the early days of Roman numerals, the Romans didn't bother with any of this
# new-fangled subtraction 'IX' nonsense. No sir, it was straight addition,
# biggest to littlest - so 9 was written 'VIIII' and so on.
#
# Write a method that, when passed any integer between 1 and 1000, it returns a
# string containing the proper old-school Roman numeral. In other words:
#
#   $ ruby exercise4.rb 9
#   VIIII
#
# TIP #1: Here's a mapping of Roman to Arabic numerals:
#
#   1000 = M
#    500 = D
#    100 = C
#     50 = L
#     10 = X
#      5 = V
#      1 = I
#
# TIP #2: Use the integer division and modulus methods on page 32.
#
# TIP #3: You only need to change the `old_school_roman_numeral` method.

# rubocop:disable MethodLength
def old_school_roman_numeral(num)
  return '' unless (1..9999).cover?(num)
  roman_string = "\u2182" + "\u2181" + 'MDCLXVI'
  num.to_s.rjust(4, '0').split('').map.with_index do |d, i|
    earth = d.to_i % 5
    heaven = d.to_i / 5
    roman = roman_string[2 * i, 3]

    r = ''
    earth.times { r += roman[2] }
    r = (heaven == 0 ? '' : roman[1]) + r
  end.join
end

input = ARGV[0].to_i

abort 'Usage: exercise4.rb [1-1000]' unless input.between?(1, 1000)

puts old_school_roman_numeral(input)
