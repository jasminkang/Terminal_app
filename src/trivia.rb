require 'tty-prompt'
require_relative './lib/animal_class'

def run_trivia
  prompt = TTY::Prompt.new

  index = 0
  attempts = 0
  max_attempts = 3
  no_more_guesses = false

  animal = Animal.new

  profile = animal.profile_from_index(index.to_s)

  question_answer = prompt.ask(profile + 'Who am I?', required: false)

 correct_animal_name = animal.name_given_profile(profile)

while question_answer.downcase != correct_animal_name and !no_more_guesses
    if attempts < max_attempts
        gets question_answer
        attempts += 1
    else no_more_guesses = true
        print 'You are out of guesses!'
    index += 1
    end
end

if no_more_guesses
    print "You lose."
else print "Well done, that's right! "
    index +=1
end

prompt.yes?("Read for the next question?")
if true
    question_answer
else false
    puts "COME BACK main_menu"    
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


