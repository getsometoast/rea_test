require 'rspec'

describe CommandFactory do

  describe '#place' do

    it 'creates a place command' do
      command_factory = CommandFactory.new
      command = command_factory.place position: Position.new(0, 0, :NORTH)

      expect(command).to be_a(PlaceCommand)
    end
  end
end
