require_relative '../support/spec_helper'

describe InputParser do

  describe '#parse' do

    it 'parses a place command' do
      command_factory = double('CommandFactory')

      parser = InputParser.new command_factory: command_factory

      expect(command_factory).to receive(:create).with(type: :PLACE,
                                                       parameters: { position: Position.new(0, 0, :NORTH) })

      commands = parser.parse('PLACE 0,0,NORTH')

      expect(commands.count).to eq(1)
      expect(commands.first).to be_a(PlaceCommand)
    end
  end
end