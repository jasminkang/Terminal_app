require 'json'
require 'tty-prompt'
require_relative './lib/animal_class'

file = File.read('data.json')
data_hash = JSON.parse(file)

def run_factsheet
  prompt = TTY::Prompt.new

  choices = { Cat: 0, Shark: 1, Spider: 2, Snake: 3, Bird: 4, Maggot: 5, Bat: 6, Wasp: 7, Hyena: 8, Pig: 9, Wolf: 10,
              Vulture: 11, Cockroach: 12, Rat: 13, Skunk: 14, Orca: 15, Pigeon: 16, Piranha: 17, Frog: 18, Bull: 19 }

  question_answer = prompt.select('What animal would you like to learn about?', choices)

  index = question_answer.to_i

  name_given_index = data_hash['animals'][index]['name']

  info_given_index = data_hash['animals'][index]['description']

  puts 'About me a ' + name_given_index.to_s

  puts info_given_index
end

loop do
  run_factsheet
end

# def run_test(questions)
#     answer = ""
#     score = 0
#     for question in questions
#         puts question.prompt
#         answer = gets.chomp()
#         if answer == question.answer
#             score += 1
#         end
#     end

# animaldisplay_index= AnimalDisplay.new

# animaldisplay_index.name == data_hash['animals'][index]['name']
# animaldisplay_index.info == data_hash['animals'][index]['description'

#     index  == 0
#         return animaldisplay[index].name == "cat"
#     end
# end

# end
