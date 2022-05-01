require 'json'

def data_hash
  file = File.read('data.json')
  data_hash = JSON.parse(file)
rescue Errno::ENOENT
  puts "ERROR file not found or incorrect system specifications."
end

class Animal
  def name_from_index(index)
    data_hash['animals'][index.to_i]['name']
  end

  def profile_from_index(index)
    data_hash['animals'][index.to_i]['description']
  end

  def index_given_name(name)
    data_hash.index(name).to_i
  end

  def index_given_profile(profile)
    data_hash.index(profile).to_i
  end

  def name_given_profile(profile)
    index = index_given_profile(profile)
    name_from_index(index)
  end
end
