class MoveCommand
  def initialize(**args)
    @robot = args[:robot]
    @table = args[:table]
  end

  def execute
    @robot.position = Position.new(0, 1, :NORTH) unless @table.out_of_bounds? @robot.position
  end
end
