# class Factorial
#     def factorial_of(n)
#         (1..n).inject(:*)
# end
# end

# class Calculator
#     def add(a,b)
#         a + b
#     end
# end

require 'json'

def data_hash
  file = File.read('data.json')
  data_hash = JSON.parse(file)
end

class Animal
  def name_from_index(index)
    data_hash['animals'][index]['name']
  end

  def profile_from_index(index)
    data_hash['animals'][index]['description']
  end

  def index_given_name(name)
    data_hash.index(name).to_i
  end
end
