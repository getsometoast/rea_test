require_relative '../support/spec_helper'

describe InputParser do

  describe '#parse' do

    it 'parses a place command' do
      command_factory = double('CommandFactory')

      parser = InputParser.new command_factory: command_factory

      expect(command_factory).to receive(:create).with(PLACE: { position: Position.new(0, 0, :NORTH) })

      parser.parse('PLACE 0,0,NORTH')
    end

    it 'parses a report command' do
      command_factory = double('CommandFactory')

      parser = InputParser.new command_factory: command_factory

      expect(command_factory).to receive(:create).with(:REPORT)

      parser.parse('REPORT')
    end
  end
end
