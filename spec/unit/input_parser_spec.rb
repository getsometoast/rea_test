require_relative '../support/spec_helper'

describe InputParser do

  describe '#parse' do

    it 'parses a place command' do
      command_factory = double('CommandFactory')

      parser = InputParser.new command_factory: command_factory

      expect(command_factory).to receive(:place).with( position: Position.new(0, 0, :NORTH) )

      parser.parse('PLACE 0,0,NORTH')
    end

    it 'parses a place command 2' do
      command_factory = CommandFactory.new robot: Robot.new, table: Table.new, output: StringIO.new

      parser = InputParser.new command_factory: command_factory

      expect(command_factory).to receive(:place).with( position: Position.new(4, 0, :EAST) )

      result = parser.parse('PLACE 4,0,EAST')
      expect(result).to be_a(PlaceCommand)
    end

    it 'parses a report command' do
      command_factory = double('CommandFactory')

      parser = InputParser.new command_factory: command_factory

      expect(command_factory).to receive(:report)

      parser.parse('REPORT')
    end

    it 'parses a move command' do
      command_factory = double('CommandFactory')

      parser = InputParser.new command_factory: command_factory

      expect(command_factory).to receive(:move)

      parser.parse('MOVE')
    end

    it 'parses a multiple command' do
      place_command = double('PlaceCommand')
      report_command = double('ReportCommand')
      command_factory = double('CommandFactory')

      parser = InputParser.new command_factory: command_factory

      expect(command_factory).to receive(:place) { place_command }
      expect(command_factory).to receive(:report) { report_command }

      result = parser.parse("PLACE 0,0,NORTH\nREPORT")

      expect(result).to be_a(Array)
      expect(result.count).to eq(2)
      expect(result.first).to eq(place_command)
      expect(result.last).to eq(report_command)
    end
  end
end
