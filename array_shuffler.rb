require 'rspec'

@array = [1, 2, 3, 4, 5, 6]

def get_input
  shuffle = gets.chomp.to_i
  shuffler(shuffle)    
end

def shuffler (input)
  input.times do
  x = @array.delete_at(0)
  @array << x
  end
  p @array
  get_input    
end

get_input

describe 'shuffler' do 
  it "shuffles the elements of the array" do
    @array = [1, 2, 3, 4, 5, 6]
    expect(shuffler(3)).to eq([4, 5, 6, 1, 2, 3])
  end
end