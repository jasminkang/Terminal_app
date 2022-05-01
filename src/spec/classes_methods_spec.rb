require 'rspec'
require_relative '../lib/classes_methods'
require 'json'


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
