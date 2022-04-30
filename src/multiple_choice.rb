require 'tty-prompt'
require_relative './lib/animal_class'
require 'colorize'

def run_multi_choice
  prompt = TTY::Prompt.new

  index = 0
  score = 0

  animal = Animal.new

  while index < 20

    choices = data_hash['animals'][index]['answerchoices'][0]

    question_answer = prompt.select('Who am I?' + animal.profile_from_index(index).to_s, choices)

    answer_point = question_answer.to_i == index

    index += 1

    if answer_point == true
      score += 1
    else
      answer_point == false
    end

  end

  puts ('You got ' + score.to_s + '/20').light_magenta

  require_relative 'main'
  main_menu
end

run_multi_choice
