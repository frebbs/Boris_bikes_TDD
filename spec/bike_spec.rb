require 'rspec'

require_relative '../lib/bike'

describe Bike do
  describe '#Working' do
    it 'returns true if working' do
      bike = Bike.new
      expect(bike).to be_working
    end
    it 'returns false if broken' do
      bike = Bike.new(true)
      expect(bike).to_not be_working
    end
    it 'lets the user report the bike as broken' do
      bike = Bike.new
      bike.report_broken(true)
      expect(bike.needs_repair).to be(true)
    end
  end
end

