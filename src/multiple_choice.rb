require 'tty-prompt'
require_relative '/Users/jasminkang/Documents/Terminal_app/src/lib/animal_class'

prompt = TTY::Prompt.new


index = 0
score = 0


while index < 20 do

  choices = data_hash['animals'][index]['answerchoices'][0]

  QuestionAnswer = prompt.select('Who am I?' + Animal.new.profile_from_index(index).to_s, choices)

  answer_point = QuestionAnswer.to_i == index

  index += 1

  if answer_point == true
    score +=1
  else answer_point == false
    score += 0
  end
end
  puts "You got " + "#{score}" + "/20"






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
