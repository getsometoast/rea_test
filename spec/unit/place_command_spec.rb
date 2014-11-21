require 'rspec'

describe PlaceCommand do

  describe '#execute' do

    it 'should update the robots current position' do
      robot = Robot.new
      place = PlaceCommand.new robot: robot

      expect(robot).to receive(:position).with(Position.new(0, 0, :NORTH))

      place.execute
    end
  end
end
