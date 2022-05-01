require 'json'
require_relative './lib/classes_methods'
require_relative 'headers'

system 'clear'

def run_factsheet
  header_fact

  animal = Animal.new

  prompt = TTY::Prompt.new

  choices = { Cat: 0, Shark: 1, Spider: 2, Snake: 3, Bird: 4, Maggot: 5, Bat: 6, Wasp: 7, Hyena: 8, Pig: 9, Wolf: 10,
              Vulture: 11, Cockroach: 12, Rat: 13, Skunk: 14, Orca: 15, Pigeon: 16, Piranha: 17, Frog: 18, Bull: 19 }

  question_answer = prompt.select('What animal would you like to learn about?'.magenta, choices)

  index = question_answer.to_i

  puts ('About me a ' + animal.name_from_index(index)).yellow

  puts animal.profile_from_index(index)

  next_question = prompt.yes?('Want another fact?'.green)

  system 'clear'
  if next_question
    run_factsheet
  else
    require_relative 'main'
    main_menu
  end
end

loop do
  run_factsheet
end
