require 'rspec'

require_relative '../lib/docking_station'

describe DockingStation do

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      expect(subject).to respond_to(:release_bike)
    end

    it 'raises an error if no stock' do
      #subject.dock_bike(Bike.new)
      expect{subject.release_bike}.to raise_error 'No stock'
    end
  end

  describe '#dock_bike' do
    it 'docks the bike' do
      expect(subject).to respond_to(:dock_bike)
    end

    it 'returns the number of docked bikes' do
      bike = Bike.new
      subject.dock_bike(bike)
      #50.times{subject.dock_bike(bike)}
      expect(subject.docked_bikes.count).to eq(1)
    end

    it 'rejects docking if at capacity already' do
      20.times{subject.dock_bike(Bike.new)}
      #subject.dock_bike(Bike.new)
      expect{subject.dock_bike(Bike.new)}.to raise_error "Docking station full"
    end
  end
end
