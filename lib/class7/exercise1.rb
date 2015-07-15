#!/usr/bin/env ruby
#
# 5 points
#
# The following five methods must be fixed:
#
#   Integer#hours_in_seconds #=> Integer
#
#     Returns the number of hours converted to seconds.
#
#     10.hours_in_seconds  #=> 36_000
#
#   String#indent(amount = 2) #=> String
#
#     Returns `amount` spaces plus the String. The default `amount` is 2.
#
#     'foo'.indent     #=> '  foo'
#     'foo'.indent(3)  #=> '   foo'
#
#   Integer#to_roman => String
#
#     Returns the roman numeral equavilent of the arabic number.
#
#     1999.to_roman  #=> 'MCMXCIX'
#
#   Array#second #=> Object
#
#     Returns the second element of the Array.
#
#     [10, 20, 30].second  #=> 20
#
#   Array#third #=> Object
#
#     Returns the third element of the Array.
#
#     [10, 20, 30].third  #=> 30
#
# HINT: Remember to use `self` to access the receiver object of the method
#
#     class Integer
#       def plus_forty_two
#         self + 42
#       end
#     end
#
#     1.plus_forty_two  #=> 43

class Integer
  def hours_in_seconds
    self * 60 * 60
  end
end

class String
  def indent(amount = 2)
    ' ' * amount + self
  end
end

class Integer
  # rubocop:disable MethodLength
  def to_roman
    return '' unless (1..9999).cover?(self)
    roman_string = "\u2182" + "\u2181" + 'MDCLXVI'
    to_s.rjust(4, '0').split('').map.with_index do |d, i|
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
end

class Array
  def second
    self[1]
  end

  def third
    self[2]
  end
end
