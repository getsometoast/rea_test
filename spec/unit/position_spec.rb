require_relative '../support/spec_helper'

describe Position do

  describe '#==' do

    it 'should equal other' do
      expect(Position.new(0, 0, :NORTH)).to eq(Position.new(0, 0, :NORTH))
    end
  end

  describe 'to_s' do

    it 'should output string representation of position' do
      expect(Position.new(0, 0, :NORTH).to_s).to eq('0,0,NORTH')
    end
  end
end
