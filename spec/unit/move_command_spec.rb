require_relative '../support/spec_helper'

describe MoveCommand do

  describe '#execute' do

    context 'heading north' do

      it 'updates the robots position' do
        it_moves from: Position.new(0, 0, :NORTH),
                 to: Position.new(0, 1, :NORTH)
      end

      it 'does not move the robot off the table' do
        it_does_not_move from: Position.new(0, 4, :NORTH),
                         to: Position.new(0, 5, :NORTH)
      end
    end

    context 'heading south' do

      it 'updates the robots position' do
        it_moves from: Position.new(0, 1, :SOUTH),
                 to: Position.new(0, 0, :SOUTH)
      end

      it 'does not move the robot off the table' do
        it_does_not_move from: Position.new(0, 0, :SOUTH),
                         to: Position.new(0, -1, :SOUTH)
      end
    end

    context 'heading east' do

      it 'updates the robots position' do
        it_moves from: Position.new(0, 0, :EAST),
                 to: Position.new(1, 0, :EAST)
      end

      it 'does not move the robot off the table' do
        it_does_not_move from: Position.new(4, 0, :EAST),
                         to: Position.new(5, 0, :EAST)
      end
    end

    context 'heading west' do

      it 'updates the robots position' do
        it_moves from: Position.new(1, 0, :WEST),
                 to: Position.new(0, 0, :WEST)
      end

      it 'does not move the robot off the table' do
        it_does_not_move from: Position.new(0, 0, :WEST),
                         to: Position.new(-1, 0, :WEST)
      end
    end
  end
end
