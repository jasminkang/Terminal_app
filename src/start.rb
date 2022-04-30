require 'json'
require 'colorize'

if ARGV[0] == 'help'
  file = File.open('help.txt')
  puts file.read
elsif ARGV[0] == 'play'
  require_relative 'main'
  file = File.open('main.rb')
else
  puts 'Error invalid input - please refer to help documentation and try again'.red
  file = File.open('help.txt')
  puts file.read
  puts 'More info on github'
end
