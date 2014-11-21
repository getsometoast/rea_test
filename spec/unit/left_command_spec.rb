require_relative '../support/spec_helper'

def it_rotates_left(**args)
  robot = double('Robot')

  expect(robot).to receive(:position) { Position.new(0, 0, args[:from]) }
  expect(robot).to receive(:position=).with(Position.new(0, 0, args[:to]))

  left_command = LeftCommand.new robot: robot

  left_command.execute
end

describe LeftCommand do

  describe '#execute' do

    context 'currently heading north' do

      it 'updates robots position to head west' do
        it_rotates_left from: :NORTH, to: :WEST
      end
    end

    context 'currently heading west' do

      it 'updates robots position to head south' do
        robot = double('Robot')

        expect(robot).to receive(:position) { Position.new(0, 0, :WEST) }
        expect(robot).to receive(:position=).with(Position.new(0, 0, :SOUTH))

        left_command = LeftCommand.new robot: robot

        left_command.execute
      end
    end

    context 'currently heading south' do

      it 'updates robots position to head east' do
        robot = double('Robot')

        expect(robot).to receive(:position) { Position.new(0, 0, :SOUTH) }
        expect(robot).to receive(:position=).with(Position.new(0, 0, :EAST))

        left_command = LeftCommand.new robot: robot

        left_command.execute
      end
    end

    context 'currently heading east' do

      it 'updates robots position to head north' do
        robot = double('Robot')

        expect(robot).to receive(:position) { Position.new(0, 0, :EAST) }
        expect(robot).to receive(:position=).with(Position.new(0, 0, :NORTH))

        left_command = LeftCommand.new robot: robot

        left_command.execute
      end
    end
  end
end
