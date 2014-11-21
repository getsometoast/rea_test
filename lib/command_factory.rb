class CommandFactory
  def initialize(**args)
    @robot = args[:robot]
    @table = args[:table]
    @output = args[:output]
  end

  def place(**args)
    PlaceCommand.new robot: @robot,
                     position: args[:position],
                     table: @table
  end

  def report
    ReportCommand.new robot: @robot,
                      output: @output
  end

  def move
    MoveCommand.new robot: @robot,
                    table: @table
  end

  def left
    LeftCommand.new robot: @robot
  end

  def right
    RightCommand.new robot: @robot
  end
end
