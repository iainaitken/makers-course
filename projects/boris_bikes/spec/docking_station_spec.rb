require 'boris'

describe DockingStation do

  it 'instance of class responds to method' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it 'is a bike' do
    expect(DockingStation.new.release_bike).to be_a(Bike)
  end

end
