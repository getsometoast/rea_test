require 'rspec'

describe PlaceCommand do

  describe '#execute' do

    context 'position within table bounds' do

      it 'should update the robots current position' do
        robot = double('Robot')
        position = Position.new(0, 0, :NORTH)
        place = PlaceCommand.new robot: robot, position: position

        expect(robot).to receive(:position=).with(position)

        place.execute
      end
    end

    context 'position is outside table bounds' do

      it 'should not update the robots current position' do
        robot = double('Robot')
        table = doublt('Table')
        position = Position.new(-1, -1, :NORTH)

        place = PlaceCommand.new robot: robot,
                                 position: position,
                                 table: table

        expect(table).to receive(:out_of_bounds?).with(position)

        place.execute
      end
    end
  end
end
