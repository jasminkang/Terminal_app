require 'artii'
require 'colorize'

HEADER_LINE = '------------------------------------------------------------------------------'.light_green
HEADER_LENGTH = HEADER_LINE.length


def header_fact
  a = Artii::Base.new
  puts HEADER_LINE
  puts a.asciify('All about us')
  puts HEADER_LINE
end

def header_trivia
  a = Artii::Base.new
  puts HEADER_LINE
  puts a.asciify('Tri try trivia')
  puts HEADER_LINE
end

def header_quiz
  a = Artii::Base.new
  puts HEADER_LINE
  puts a.asciify('20 Questions Quiz!')
  puts HEADER_LINE
end

def main_menu_header
  a = Artii::Base.new
  puts HEADER_LINE
  puts a.asciify('             Guess Who ?')
  puts a.asciify('                    Animals !')
  puts HEADER_LINE
end
