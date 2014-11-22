require_relative '../support/spec_helper'

describe RightCommand do

  describe '#execute' do
    context 'currently heading north' do

      it 'updates robots position to head east' do
        it_rotates_right from: :NORTH, to: :EAST
      end
    end

    context 'currently heading east' do

      it 'updates robots position to head south' do
        it_rotates_right from: :EAST, to: :SOUTH
      end
    end

    context 'currently heading south' do

      it 'updates robots position to head west' do
        it_rotates_right from: :SOUTH, to: :WEST
      end
    end

    context 'currently heading west' do

      it 'updates robots position to head north' do
        it_rotates_right from: :WEST, to: :NORTH
      end
    end
  end
end