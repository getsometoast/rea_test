require 'rspec'

describe MoveCommand do

  describe '#execute' do

    context 'heading north' do

      it 'updates the robots position' do

        robot = double('Robot')

        expect(robot).to receive(:position=) { Position.new(0, 1, :NORTH) }

        move_command = MoveCommand.new robot: robot

        move_command.execute
      end
    end
  end
end
