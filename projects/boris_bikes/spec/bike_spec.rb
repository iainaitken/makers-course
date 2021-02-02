require 'boris'

describe Bike do

  it 'instance of class responds to method' do
    expect(Bike.new).to respond_to(:working?)
  end

end
