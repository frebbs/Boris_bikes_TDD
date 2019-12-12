require 'rspec'

require_relative '../lib/bike'

describe Bike do
  describe '#Working' do
    it 'returns true if working' do
      bike = Bike.new
      expect(bike).to be_working
    end
  end
end

