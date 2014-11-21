require 'rspec'

describe MoveCommand do

  describe '#execute' do

    context 'heading north' do

      it 'updates the robots position' do
        robot = double('Robot')
        table = double('Table')

        allow(table).to receive(:out_of_bounds?) { false }
        allow(robot).to receive(:position)
        expect(robot).to receive(:position=) { Position.new(0, 1, :NORTH) }

        move_command = MoveCommand.new robot: robot,
                                       table: table
        move_command.execute
      end

      it 'does not move the robot off the table' do
        robot = double('Robot')
        table = double('Table')
        current_position = Position.new(0, 5, :NORTH)

        expect(robot).to receive(:position) { current_position }
        expect(table).to receive(:out_of_bounds?).with(current_position) { true }

        move_command = MoveCommand.new robot: robot,
                                       table: table
        move_command.execute
      end
    end
  end
end
