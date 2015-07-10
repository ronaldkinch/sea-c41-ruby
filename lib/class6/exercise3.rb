#!/usr/bin/env ruby
#
# 5 points
#
# Replace the `person` and `database` methods with your solutions from
# exercises 1 and 2.
#
# Write a program that saves the person key-value pairs, in YAML format, to
# anyone's `lib/class6/database.yml` file and displays the result.
#
# So if Tim runs this program successfully:
#
#   $ ruby exercise3.rb
#   Saved 4 key-value pairs to /Users/tim/sea-c21-ruby/lib/class6/database.yml
#
# Then his database needs to contain the following YAML content:
#
#   $ cat database.yml
#   ---
#   :name: George Harrison
#   :age: 58
#   :song: Something
#   :url: https://www.youtube.com/watch?v=UKAp-jRUp2o
#
# TIP: See your solution for Class 5 Exercise 3.

require 'yaml'

def person
  { name: 'George Harrison',
    age:  58,
    song: 'Something',
    url:  'https://www.youtube.com/watch?v=UKAp-jRUp2o' }
end

def database
  # Assumes database.yml in same directory as running program
  File.absolute_path(File.dirname(__FILE__) + '/database.yml')
end

def save
  File.write(database, person.to_yaml)
end

save

puts "Saved #{person.size} key-value pairs to #{database}"
