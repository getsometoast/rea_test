require_relative '../support/spec_helper'

describe Simulator do

  describe '#run' do

    it 'executes the commands' do
      place_command = double('PlaceCommand')
      report_command = double('ReportCommand')

      simulator = Simulator.new

      expect(place_command).to receive(:execute)
      expect(report_command).to receive(:execute)

      simulator.run([place_command, report_command])
    end
  end
end