# 5 points
#
# What if Nana doesn't want you to leave? Copy your solution to exercise2 and
# paste it here. Modify the program so that you have to type 'BYE' three times
# **in a row** to stop the conversation.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
#
# If you shout 'BYE' three times, but not in a row, you should still be talking
# to Nana.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   bye
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   I HAVE TO GO NOW
#   Nana: NOT SINCE 1936!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!

answer = 0 # nonstring initialization
count = 1
max_count = 3

until answer == 'BYE' && count == max_count
  if answer == 'BYE'
    puts "Nana: HOW'S SCHOOL GOING?"
    count += 1
  else
    count = 1
    if answer == 0 # nonstring initialization
      puts 'Nana: HI SWEETIE! GIVE NANA A KISS!'
    elsif answer != answer.upcase
      puts 'Nana: HUH?! SPEAK UP, SWEETIE!'
    else
      puts "Nana: NOT SINCE #{rand(21) + 1930}!"
    end
  end
  answer = gets.chomp
end
puts 'Nana: BYE SWEETIE!'
