module MoveCommandHelpers
  def it_updates_robots_position(**args)
    robot = double('Robot')
    table = double('Table')

    allow(table).to receive(:out_of_bounds?) { false }
    allow(robot).to receive(:position) { args[:from] }
    expect(robot).to receive(:position=).with(args[:to])

    move_command = MoveCommand.new robot: robot,
                                   table: table
    move_command.execute
  end
end