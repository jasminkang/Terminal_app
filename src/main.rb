require 'tty-prompt'
require_relative 'headers'
require 'json'

main_menu_header

def main_menu
  prompt = TTY::Prompt.new

  options = { Facts: 1, Trivia: 2, Quiz: 3, HELP: 4, EXIT: 5 }

  game_choice = prompt.select('Hello! What would you like to do?', options)

  case game_choice
  when 1
    require_relative 'facts'
    run_factsheet
  when 2
    require_relative 'trivia'
    run_trivia
  when 3
    require_relative 'multiple_choice'
    run_multi_choice
  when 4
    file = File.open('help.txt')
    puts file.read
  when 5
    puts 'Seeya next time! Thanks for playing!'
    exit 0
  end
end

main_menu
