require 'tty-prompt'
require_relative './lib/animal_class'

def run_trivia
  prompt = TTY::Prompt.new
  index = 0
  max_attempts = 3
  no_more_guesses = false
  animal = Animal.new

  while index < 20

    answer = ''

    profile = animal.profile_from_index(index)

    question_answer = puts profile

    right_answer = animal.name_from_index(index)
    attempts = 0
    while answer.downcase != right_answer and !no_more_guesses
      if attempts < max_attempts
        puts 'Who am I?'
        answer = gets.chomp.downcase
        attempts += 1
      else
        no_more_guesses = true
        print 'You are out of guesses!'
      end
    end

    if no_more_guesses
      print 'You lose.'
    else
      print 'Well done!'
    end

    next_question = prompt.yes?('Ready for the next question?')
    if next_question
      index += 1
    else
      require_relative 'main'
      main_menu
    end
  end
end

run_trivia
