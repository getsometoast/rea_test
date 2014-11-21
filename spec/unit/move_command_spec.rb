require 'rspec'

def it_updates_robots_position(**args)
  robot = double('Robot')
  table = double('Table')

  allow(table).to receive(:out_of_bounds?) { false }
  allow(robot).to receive(:position) { args[:from] }
  expect(robot).to receive(:position=).with(args[:to])

  move_command = MoveCommand.new robot: robot,
                                 table: table
  move_command.execute
end

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
        robot = double('Robot')
        table = double('Table')

        allow(table).to receive(:out_of_bounds?) { false }
        allow(robot).to receive(:position) { Position.new(0, 1, :SOUTH) }
        expect(robot).to receive(:position=).with(Position.new(0, 0, :SOUTH))

        move_command = MoveCommand.new robot: robot,
                                       table: table
        move_command.execute
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
        robot = double('Robot')
        table = double('Table')

        allow(table).to receive(:out_of_bounds?) { false }
        allow(robot).to receive(:position) { Position.new(0, 0, :EAST) }
        expect(robot).to receive(:position=).with(Position.new(1, 0, :EAST))

        move_command = MoveCommand.new robot: robot,
                                       table: table
        move_command.execute
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
        robot = double('Robot')
        table = double('Table')

        allow(table).to receive(:out_of_bounds?) { false }
        allow(robot).to receive(:position) { Position.new(1, 0, :WEST) }
        expect(robot).to receive(:position=).with(Position.new(0, 0, :WEST))

        move_command = MoveCommand.new robot: robot,
                                       table: table
        move_command.execute
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
