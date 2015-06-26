# 5 points
#
# Write a program that displays the following table of contents:
#
#   $ ruby exercise7.rb
#                   Table of Contents
#   Chapter 1:  Getting Started                page  1
#   Chapter 2:  Numbers                        page  9
#   Chapter 3:  Letters                        page 13
#
# TIP #1: The width of each line is 50 characters.
#
# TIP #2: You'll need the following methods:
#
#   string.center(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` centered.
#
#     'bird'.center(10)  #=> '   bird   '
#
#   string.ljust(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` left justified.
#
#     'bird'.ljust(10)  #=> 'bird      '
#
#   string.rjust(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` right justified.
#
#     'bird'.rjust(10)  #=> '      bird'

def put_line(chapter, page, wid)
  pag = 10
  puts chapter.ljust(wid - pag) + page.rjust(pag)
end

line_width = 50
puts 'Table of Contents'.center(line_width)
put_line('Chapter 1:  Getting Started', 'page  1', line_width)
put_line('Chapter 2:  Numbers', 'page  9', line_width)
put_line('Chapter 3:  Letters', 'page 13', line_width)
