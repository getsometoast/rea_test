class LeftCommand
  def initialize(**args)
    @robot = args[:robot]
  end

  def execute
    @robot.position = Position.new(0, 0, :WEST)
  end
end