require 'tty-prompt'

def main_menu
  prompt = TTY::Prompt.new

  options = { Facts: 1, Trivia: 2, Quiz: 3 }

  game_choice = prompt.select('What would you like to do?', options)

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

  end
end

main_menu
