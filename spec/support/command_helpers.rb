module CommandHelpers
  def it_rotates_left(**args)
    robot = double('Robot')

    expect(robot).to receive(:position) { Position.new(0, 0, args[:from]) }
    expect(robot).to receive(:position=).with(Position.new(0, 0, args[:to]))

    left_command = Commands::Left.new robot: robot

    left_command.execute
  end

  def it_rotates_right(**args)
    robot = double('Robot')

    expect(robot).to receive(:position) { Position.new(0, 0, args[:from]) }
    expect(robot).to receive(:position=).with(Position.new(0, 0, args[:to]))

    right_command = Commands::Right.new robot: robot

    right_command.execute
  end

  def it_moves(**args)
    robot = double('Robot')
    table = double('Table')

    allow(table).to receive(:out_of_bounds?) { false }
    allow(robot).to receive(:position) { args[:from] }
    expect(robot).to receive(:position=).with(args[:to])

    move_command = Commands::Move.new robot: robot,
                                      table: table
    move_command.execute
  end

  def it_does_not_move(**args)
    robot = double('Robot')
    table = double('Table')
    current_position = args[:from]
    next_position = args[:to]

    expect(robot).to receive(:position) { current_position }
    expect(table).to receive(:out_of_bounds?).with(next_position) { true }

    move_command = Commands::Move.new robot: robot,
                                      table: table
    move_command.execute
  end
end
