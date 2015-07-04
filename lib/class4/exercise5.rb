#!/usr/bin/env ruby
#
# 5 points
#
# Eventually, someone thought it would be terribly clever if putting a smaller
# number before a larger one meant you had to subtract the smaller one. As a
# result of this development, you must now suffer.
#
# Rewrite your previous program so that, when passed any integer between 1 and
# 1000, it returns a string containing the proper modern Roman numeral. In other
# words:
#
#   $ ruby exercise5.rb 9
#   IX
#
# TIP #1: Here's a mapping of Roman to Arabic numerals:
#
#   1000 = M
#    900 = CM
#    500 = D
#    400 = CD
#    100 = C
#     90 = XC
#     50 = L
#     40 = XL
#     10 = X
#      9 = IX
#      5 = V
#      4 = IV
#      1 = I
#
# TIP #3: You only need to change the `modern_roman_numeral` method.

# rubocop:disable MethodLength
def modern_roman_numeral(num)
  return '' unless (1..9999).cover?(num)
  roman_string = "\u2182" + "\u2181" + 'MDCLXVI'
  num.to_s.rjust(4, '0').split('').map.with_index do |d, i|
    earth = d.to_i % 5
    heaven = d.to_i / 5
    roman = roman_string[2 * i, 3]
    group_str = heaven == 0 ? roman[1] : roman[0]

    r = ''
    earth.times { r += roman[2] }
    r = (heaven == 0 ? '' : roman[1]) + r
    r = earth == 4 ? roman[2] + group_str : r
  end.join
end

input = ARGV[0].to_i

abort 'Usage: exercise5.rb [1-1000]' unless input.between?(1, 1000)

puts modern_roman_numeral(input)
