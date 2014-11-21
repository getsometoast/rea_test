class MoveCommand
  def initialize(**args)
    @robot = args[:robot]
    @table = args[:table]
  end

  def execute
    next_position = get_next_position(@robot.position)
    @robot.position = next_position unless @table.out_of_bounds? next_position
  end

  private

  def get_next_position(position)
    case position.heading
    when :NORTH then Position.new(position.x, position.y + 1, position.heading)
    when :SOUTH then Position.new(position.x, position.y - 1, position.heading)
    when :EAST then Position.new(position.x + 1, position.y, position.heading)
    when :WEST then Position.new(position.x - 1, position.y, position.heading)
    end
  end
end
