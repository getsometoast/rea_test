require_relative '../support/spec_helper'

describe ReportCommand do

  describe '#execute' do

    context 'robot is on the table' do

      it 'reports the robots current position' do
        robot = double('Robot')
        output = double('$stdout')

        report = ReportCommand.new robot: robot,
                                   output: output

        expect(robot).to receive(:position) { Position.new(0, 0, :NORTH) }
        expect(output).to receive(:puts).with('0,0,NORTH')

        report.execute
      end
    end

    context 'robot is off the table' do

      it 'ignores the command' do
        robot = double('Robot')
        output = double('$stdout')

        report = ReportCommand.new robot: robot,
                                   output: output

        report.execute
      end
    end
  end
end
