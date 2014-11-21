require 'rspec'

describe PlaceCommand do

  describe '#execute' do

    it 'should update the robots current position' do
      robot = double('Robot')
      position = Position.new(0, 0, :NORTH)
      place = PlaceCommand.new robot: robot, position: position

      expect(robot).to receive(:position=).with(position)

      place.execute
    end
  end
end
