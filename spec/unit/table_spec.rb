require_relative '../support/spec_helper'

describe Table do

  describe '#out_of_bounds?' do

    it 'returns true if a position is off table' do

      expect(Table.new.out_of_bounds? Position.new(-1, -1, :NORTH)).to eq(true)
    end
  end
end
