# 5 points
#
# Write a program that displays all the leap years between 1900 and 2000.
#
# Leap years are years divisible by 4 (e.g. 1984).
#
# Years divisible by 100 are not leap years (e.g. 1900) unless they are also
# divisible by 400 (e.g. 2000).
#
# TIP: I expect you to use a loop and a few modulo operations.

def leap_year?(yr)
  yr % 4 == 0 && yr % 100 != 0 || yr % 400 == 0
end

first = 1900
last = 2000
# (1900..2000).each { |y| puts y if Date.gregorian_year?(y) }
(first..last).each { |year| puts year if leap_year?(year) }
