require 'tty-prompt'
require_relative './lib/animal_class'

def run_trivia
  prompt = TTY::Prompt.new
  index = 0
  attempts = 0
  max_attempts = 3
  no_more_guesses = false
  animal = Animal.new

  while index < 20

    answer = ''

    profile = animal.profile_from_index(index)

    question_answer = puts profile

    right_answer = animal.name_from_index(index)

    puts right_answer

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
      attempts = 0
    else
      puts 'main menu'
    end
  end
end

run_trivia

#     puts "##animal.index_given_profile(profile)"
#     puts animal.index_given_profile(profile)
#     puts animal.index_given_profile(profile).class

#     puts "##animal.index_given_name(correct_animal_name))"
#     puts animal.index_given_name(correct_animal_name)
#     puts animal.index_given_name(correct_animal_name).class

#   puts '## output index_given_name(question_answer.downcase)'
#   puts animal.index_given_name(question_answer.downcase)
#    puts animal.index_given_name(question_answer.downcase).class

#    puts '## output question_answer'
#   puts question_answer.downcase
#    puts question_answer.downcase.class

#    ##This reflects the same output as the question_answer
#    puts "##correct_animal_name"
#    puts correct_animal_name
#    puts correct_animal_name.class

# ## This is an integer
#   puts '## index'
#   puts index
#    puts index.class

#   #This was output as false with answer asdf"
#    puts '## output correct_answer'
#   puts correct_answer
#   puts correct_answer.class

#   #This is an integer
#   puts attempts
#    puts attempts.class
