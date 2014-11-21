require_relative '../support/spec_helper'

describe RightCommand do

  describe '#execute' do
    context 'currently heading north' do

      it 'updates robots position to head east' do
        robot = double('Robot')

        expect(robot).to receive(:position) { Position.new(0, 0, :NORTH) }
        expect(robot).to receive(:position=).with(Position.new(0, 0, :EAST))

        right_command = RightCommand.new robot: robot

        right_command.execute
      end
    end

    context 'currently heading east' do

      it 'updates robots position to head south' do
        robot = double('Robot')

        expect(robot).to receive(:position) { Position.new(0, 0, :EAST) }
        expect(robot).to receive(:position=).with(Position.new(0, 0, :SOUTH))

        right_command = RightCommand.new robot: robot

        right_command.execute
      end
    end

    context 'currently heading south' do

      it 'updates robots position to head west' do
        robot = double('Robot')

        expect(robot).to receive(:position) { Position.new(0, 0, :SOUTH) }
        expect(robot).to receive(:position=).with(Position.new(0, 0, :WEST))

        right_command = RightCommand.new robot: robot

        right_command.execute
      end
    end

    context 'currently heading west' do

      it 'updates robots position to head north' do
        robot = double('Robot')

        expect(robot).to receive(:position) { Position.new(0, 0, :WEST) }
        expect(robot).to receive(:position=).with(Position.new(0, 0, :NORTH))

        right_command = RightCommand.new robot: robot

        right_command.execute
      end
    end
  end
end