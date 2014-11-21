class PlaceCommand
  def initialize(**args)
    @robot = args[:robot]
    @position = args[:position]
  end

  def execute
    @robot.position = @position
  end
end
