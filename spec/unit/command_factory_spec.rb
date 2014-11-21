require 'rspec'

describe CommandFactory do

  describe '#create' do

    it 'creates a place command' do

      command_factory = CommandFactory.new
      command = command_factory.create PLACE: { position: Position.new(0, 0, :NORTH) }

      expect(command).to be_a(PlaceCommand)
    end
  end
end
