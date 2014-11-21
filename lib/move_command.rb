class MoveCommand
  def initialize(**args)
    @robot = args[:robot]
  end

  def execute
    @robot.position = Position.new(0, 1, :NORTH)
  end
end
