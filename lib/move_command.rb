class MoveCommand
  def initialize(**args)
    @robot = args[:robot]
    @table = args[:table]
  end

  def execute
    @robot.position = get_next_position(@robot.position) unless @table.out_of_bounds? @robot.position
  end

  def get_next_position(position)
    Position.new(position.x, position.y + 1, position.heading)
  end
end
