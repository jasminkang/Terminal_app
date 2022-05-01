require 'json'
require_relative './lib/classes_methods'
require_relative 'headers'

file = File.read('data.json')
data_hash = JSON.parse(file)

system 'clear'

def run_factsheet
  header_fact

  prompt = TTY::Prompt.new

  choices = { Cat: 0, Shark: 1, Spider: 2, Snake: 3, Bird: 4, Maggot: 5, Bat: 6, Wasp: 7, Hyena: 8, Pig: 9, Wolf: 10,
              Vulture: 11, Cockroach: 12, Rat: 13, Skunk: 14, Orca: 15, Pigeon: 16, Piranha: 17, Frog: 18, Bull: 19 }

  question_answer = prompt.select('What animal would you like to learn about?'.magenta, choices)

  index = question_answer.to_i

  name_given_index = data_hash['animals'][index]['name']

  info_given_index = data_hash['animals'][index]['description']

  puts ('About me a ' + name_given_index.to_s).yellow

  puts info_given_index

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
