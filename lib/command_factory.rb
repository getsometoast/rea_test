class CommandFactory
  def initialize(**args)
    @robot = args[:robot]
  end

  def place(**args)
    PlaceCommand.new(robot: @robot, position: args[:position])
  end

  def report
    ReportCommand.new
  end
end
