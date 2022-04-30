require 'json'
require 'colorize'

if ARGV[0] == 'help'
  file = File.open('help.txt')
  puts file.read
else
  ARGV[0]
  require_relative 'main'
  main_menu
end
