# describe Animal do
#     describe animal_profile do
#         it "returns the profil for the selected animal"
#         animal_profile = Animal.new
#         expect(animal_profile("cat")).to eql("cat display")
#         end
#     end
# end

require 'rspec'
require_relative '../lib/animal_class'
require 'json'

# describe Factorial do
#     it "finds the factorial of 5" do
#         calculator = Factorial.new
#         expect(calculator.factorial_of(5)).to eq (120)
#     end
# end

# describe Calculator do
#     let(:calculator) {Calculator.new}
#     it "adds two numbers" do
#         expect(calculator.add(2,3)).to eq(5)
#     end
#     it "adds two  and two" do
#         expect(calculator.add(2,2)).to eq(4)
#     end

# end

file = File.read('data.json')
data_hash = JSON.parse(file)

describe Animal do
  let(:animal) { Animal.new }
  it 'returns animal name based on index ' do
    expect(animal.name_from_index(0)).to eq('cat')
  end
  it 'returns animal info based on index' do
    expect(animal.profile_from_index(0)).to eq('Although people think Im cold, I demand unequivocal love and attention from the humans I love. Treat me well and be rewarded with affection. Despite popular belief I CAN be trained and I love playtime! I only have one life so be kind to me, because if you arent I will never forget it. The sounds I make have the ability to help heal me when Im injured, and even help your human healing. Some other sounds I make are just for you, humans, leftover from when we were babies to get our mums attention.')
  end
  it 'returns animal index based on name' do
    expect(animal.index_given_name('cat')).to eq(0)
  end
  it 'returns animal index based on profile' do
    expect(animal.index_given_profile('Although people think Im cold, I demand unequivocal love and attention from the humans I love. Treat me well and be rewarded with affection. Despite popular belief I CAN be trained and I love playtime! I only have one life so be kind to me, because if you arent I will never forget it. The sounds I make have the ability to help heal me when Im injured, and even help your human healing. Some other sounds I make are just for you, humans, leftover from when we were babies to get our mums attention.')).to eq(0)
  end
   it 'returns animal name based on profile via index' do
   expect(animal.name_given_profile('Although people think Im cold, I demand unequivocal love and attention from the humans I love. Treat me well and be rewarded with affection. Despite popular belief I CAN be trained and I love playtime! I only have one life so be kind to me, because if you arent I will never forget it. The sounds I make have the ability to help heal me when Im injured, and even help your human healing. Some other sounds I make are just for you, humans, leftover from when we were babies to get our mums attention.')).to eq('cat')
end
end