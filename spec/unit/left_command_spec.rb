require_relative '../support/spec_helper'

describe LeftCommand do

  describe '#execute' do

    context 'currently heading north' do

      it 'updates robots position to head west' do
        robot = double('Robot')

        expect(robot).to receive(:position) { Position.new(0, 0, :NORTH) }
        expect(robot).to receive(:position=).with(Position.new(0, 0, :WEST))

        left_command = LeftCommand.new robot: robot

        left_command.execute
      end
    end
  end
end
