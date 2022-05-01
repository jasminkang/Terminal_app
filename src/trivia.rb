require 'tty-prompt'
require_relative './lib/animal_class'
require_relative 'headers'

system 'clear'

def run_trivia
  prompt = TTY::Prompt.new

  max_attempts = 3
  no_more_guesses = false
  animal = Animal.new
  attempts = 0
  index = 0
  answer = ''

  while index < 20

    header_trivia

    right_answer = animal.name_from_index(index)

    profile = animal.profile_from_index(index)

    question_answer = puts profile

    while !no_more_guesses and answer != right_answer
      if attempts < max_attempts
        puts 'Who am I?'.cyan
        answer = gets.chomp.downcase
        attempts += 1
      else
        no_more_guesses
        print 'You are out of guesses! '.magenta
        break
      end
    end

    if answer == right_answer
      print 'You got it, well done! '.green
    else
      answer != right_answer
      print 'You lose! '.red
    end

    next_question = prompt.yes?('Ready for the next question?'.magenta)

    if next_question
      attempts = 0
      index += 1
      no_more_guesses = false
      answer = ''
    else
      require_relative 'main'
      main_menu
    end
    system 'clear'

  end
end
run_trivia
