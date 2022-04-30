require 'artii'
require 'colorize'

HEADER_LINE = '------------------------------------------------------------------------------------------'.light_green
HEADER_LENGTH = HEADER_LINE.length

def header_fact
  a = Artii::Base.new
  puts HEADER_LINE
  puts 'Learn about me'.light_magenta
  puts HEADER_LINE
end

def header_trivia
  a = Artii::Base.new
  puts HEADER_LINE
  puts 'Three try trivia'.light_magenta
  puts HEADER_LINE
end

def header_quiz
  a = Artii::Base.new
  puts HEADER_LINE
  puts '20 question quiz'.light_magenta
  puts HEADER_LINE
end

def main_menu_header
  a = Artii::Base.new
  puts HEADER_LINE
  puts a.asciify('             Guess Who ?')
  puts a.asciify('                    Animals !')
  puts HEADER_LINE
end
