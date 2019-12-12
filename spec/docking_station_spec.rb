require 'rspec'

require_relative '../lib/docking_station'

describe DockingStation do
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      expect(subject).to respond_to(:release_bike)
    end

  end


  # This test only if bike is working
  it 'returns true if working' do
    bike = Bike.new
    expect(bike).to be_working
  end



end
