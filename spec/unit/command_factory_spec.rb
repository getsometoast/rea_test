require_relative '../support/spec_helper'

describe Commands::CommandFactory do

  before :each do
    @command_factory = Commands::CommandFactory.new
  end

  describe '#place' do

    it 'creates a place command' do
      command = @command_factory.place position: Position.new(0, 0, :NORTH)
      expect(command).to be_a(Commands::Place)
    end
  end

  describe '#report' do

    it 'creates a report command' do
      command = @command_factory.report
      expect(command).to be_a(Commands::Report)
    end
  end

  describe '#move' do

    it 'creates a move command' do
      command = @command_factory.move
      expect(command).to be_a(Commands::Move)
    end
  end

  describe '#left' do

    it 'create a left command' do
      command = @command_factory.left
      expect(command).to be_a(Commands::Left)
    end
  end

  describe '#right' do

    it 'create a left command' do
      command = @command_factory.right
      expect(command).to be_a(Commands::Right)
    end
  end
end
