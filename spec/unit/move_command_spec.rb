require_relative '../support/spec_helper'

describe MoveCommand do

  describe '#execute' do

    context 'heading north' do

      it 'updates the robots position' do
        it_updates_robots_position from: Position.new(0, 0, :NORTH),
                                   to: Position.new(0, 1, :NORTH)
      end

      it 'does not move the robot off the table' do
        robot = double('Robot')
        table = double('Table')
        current_position = Position.new(0, 4, :NORTH)
        next_position = Position.new(0, 5, :NORTH)

        expect(robot).to receive(:position) { current_position }
        expect(table).to receive(:out_of_bounds?).with(next_position) { true }

        move_command = MoveCommand.new robot: robot,
                                       table: table
        move_command.execute
      end
    end

    context 'heading south' do

      it 'updates the robots position' do
        it_updates_robots_position from: Position.new(0, 1, :SOUTH),
                                   to: Position.new(0, 0, :SOUTH)
      end

      it 'does not move the robot off the table' do
        robot = double('Robot')
        table = double('Table')
        current_position = Position.new(0, 0, :SOUTH)
        next_position = Position.new(0, -1, :SOUTH)

        expect(robot).to receive(:position) { current_position }
        expect(table).to receive(:out_of_bounds?).with(next_position) { true }

        move_command = MoveCommand.new robot: robot,
                                       table: table
        move_command.execute
      end
    end

    context 'heading east' do

      it 'updates the robots position' do
        it_updates_robots_position from: Position.new(0, 0, :EAST),
                                   to: Position.new(1, 0, :EAST)
      end

      it 'does not move the robot off the table' do
        robot = double('Robot')
        table = double('Table')
        current_position = Position.new(4, 0, :EAST)
        next_position = Position.new(5, 0, :EAST)

        expect(robot).to receive(:position) { current_position }
        expect(table).to receive(:out_of_bounds?).with(next_position) { true }

        move_command = MoveCommand.new robot: robot,
                                       table: table
        move_command.execute
      end
    end

    context 'heading west' do

      it 'updates the robots position' do
        it_updates_robots_position from: Position.new(1, 0, :WEST),
                                   to: Position.new(0, 0, :WEST)
      end

      it 'does not move the robot off the table' do
        robot = double('Robot')
        table = double('Table')
        current_position = Position.new(0, 0, :WEST)
        next_position = Position.new(-1, 0, :WEST)

        expect(robot).to receive(:position) { current_position }
        expect(table).to receive(:out_of_bounds?).with(next_position) { true }

        move_command = MoveCommand.new robot: robot,
                                       table: table
        move_command.execute
      end
    end
  end
end
