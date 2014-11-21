require_relative '../support/spec_helper'

describe Position do

  describe '#==' do

    it 'should equal other' do
      expect(Position.new(0, 0, :NORTH)).to eq(Position.new(0, 0, :NORTH))
    end
  end
end
