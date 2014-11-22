require_relative '../../support/spec_helper'

describe Commands::Report do

  before :each do
    @robot = double('Robot')
    @output = double('$stdout')

    @report = Commands::Report.new robot: @robot,
                                          output: @output
  end

  describe '#execute' do

    context 'robot is on the table' do

      it 'reports the robots current position' do
        expect(@robot).to receive(:position).twice { Position.new(0, 0, :NORTH) }
        expect(@output).to receive(:puts).with('0,0,NORTH')

        @report.execute
      end
    end

    context 'robot is off the table' do

      it 'ignores the command' do
        allow(@robot).to receive(:position)

        @report.execute
      end
    end
  end
end
