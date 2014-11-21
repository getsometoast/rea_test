module LeftCommandHelpers
  def it_rotates_left(**args)
    robot = double('Robot')

    expect(robot).to receive(:position) { Position.new(0, 0, args[:from]) }
    expect(robot).to receive(:position=).with(Position.new(0, 0, args[:to]))

    left_command = LeftCommand.new robot: robot

    left_command.execute
  end
end
