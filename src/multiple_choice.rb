require 'tty-prompt'
require_relative './lib/animal_class'
require_relative 'headers'

system 'clear'

header_quiz

def run_multi_choice
  index = 0
  score = 0
  question_n = index + 1

  animal = Animal.new

  while index < 20
    prompt = TTY::Prompt.new

    choices = data_hash['animals'][index]['answerchoices'][0]

    question_answer = prompt.select(
      'Question:'.green + question_n.to_s.green + '  Who am I?  '.red + animal.profile_from_index(index).to_s, choices
    )

    answer_point = question_answer.to_i == index

    index += 1
    question_n += 1

    if answer_point == true
      score += 1
    else
      answer_point == false
    end

  end
  system 'clear'
  puts ('You got ' + score.to_s + '/20').yellow

  try_again = prompt.yes?('Want to try again?')

  system 'clear'

  if try_again
    run_multi_choice
  else
    require_relative 'main'
    main_menu
  end
end

run_multi_choice
