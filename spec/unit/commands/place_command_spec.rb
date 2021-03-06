require_relative '../../support/spec_helper'

describe Commands::Place do

  before :each do
    @robot = double('Robot')
    @table = double('Table')
  end

  describe '#execute' do

    context 'position within table bounds' do

      it 'should update the robots current position' do
        position = Position.new(0, 0, :NORTH)

        place = Commands::Place.new robot: @robot,
                                           position: position,
                                           table: @table

        allow(@table).to receive(:out_of_bounds?).with(position) { false }
        expect(@robot).to receive(:position=).with(position)

        place.execute
      end
    end

    context 'position is outside table bounds' do

      it 'should not update the robots current position' do
        position = Position.new(-1, -1, :NORTH)

        place = Commands::Place.new robot: @robot,
                                           position: position,
                                           table: @table

        expect(@table).to receive(:out_of_bounds?).with(position) { true }
        expect(@robot).to_not receive(:position=).with(position)

        place.execute
      end
    end
  end
end
