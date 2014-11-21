class LeftCommand
  def initialize(**args)
    @robot = args[:robot]
  end

  def execute
    @robot.position = get_next_heading(@robot.position)
  end

  def get_next_heading(position)
    case position.heading
    when :NORTH then Position.new(position.x, position.y, :WEST)
    when :WEST then Position.new(position.x, position.y, :SOUTH)
    when :SOUTH then Position.new(position.x, position.y, :EAST)
    when :EAST then Position.new(position.x, position.y, :NORTH)
    end
  end
end
