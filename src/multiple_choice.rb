require 'tty-prompt'
require_relative './lib/animal_class'

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
    # get rid of nested
  end

  # if answer_point == true

  puts 'You got ' + score.to_s + '/20'
end

run_multi_choice

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

# p1 = "Who am I?"+"cat description\n(a)frog\n(b)bat\n(c)cat"
# p2 = "Who am I?"+"bat description\n(a)frog\n(b)bat\n(c)cat"
# p3 = "Who am I?"+"frog description\n(a)frog\n(b)bat\n(c)cat"

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

#     puts ("Your score is" + "#{score}".to_s+"/"+ "#{questions.length().to_s}")
# end

# run_test(questions)
