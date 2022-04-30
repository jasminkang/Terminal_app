require 'tty-prompt'
require_relative './lib/animal_class'

def run_trivia
  prompt = TTY::Prompt.new

  max_attempts = 3
  no_more_guesses = false
  animal = Animal.new
  attempts = 0
  index = 0
  answer = ''

  while index < 20

    right_answer = animal.name_from_index(index)

    profile = animal.profile_from_index(index)

    question_answer = puts profile

    while !no_more_guesses and answer != right_answer
      if attempts < max_attempts
        puts 'Who am I?'
        answer = gets.chomp.downcase
        attempts += 1
      else
        no_more_guesses
        print 'You are out of guesses!'
        break
      end
    end

    if no_more_guesses and answer != right_answer
      print 'You lose.'
    else
      answer == right_answer
      print 'Well done!'
    end

    next_question = prompt.yes?('Ready for the next question?')
    if next_question
      attempts = 0
      index += 1
      no_more_guesses = false
      answer = ''
    else
      require_relative 'main'
      main_menu
    end

  end
end

run_trivia
