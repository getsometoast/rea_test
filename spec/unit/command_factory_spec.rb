require_relative '../support/spec_helper'

describe CommandFactory do

  before :each do
    @command_factory = CommandFactory.new
  end

  describe '#place' do

    it 'creates a place command' do
      command = @command_factory.place position: Position.new(0, 0, :NORTH)
      expect(command).to be_a(Commands::PlaceCommand)
    end
  end

  describe '#report' do

    it 'creates a report command' do
      command = @command_factory.report
      expect(command).to be_a(Commands::ReportCommand)
    end
  end

  describe '#move' do

    it 'creates a move command' do
      command = @command_factory.move
      expect(command).to be_a(Commands::MoveCommand)
    end
  end

  describe '#left' do

    it 'create a left command' do
      command = @command_factory.left
      expect(command).to be_a(Commands::LeftCommand)
    end
  end

  describe '#right' do

    it 'create a left command' do
      command = @command_factory.right
      expect(command).to be_a(Commands::RightCommand)
    end
  end
end
