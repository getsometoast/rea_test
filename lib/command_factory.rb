class CommandFactory
  def initialize(**args)
    @robot = args[:robot]
    @table = args[:table]
    @output = args[:output]
  end

  def place(**args)
    Commands::PlaceCommand.new robot: @robot,
                               position: args[:position],
                               table: @table
  end

  def report
    Commands::ReportCommand.new robot: @robot,
                                output: @output
  end

  def move
    Commands::MoveCommand.new robot: @robot,
                              table: @table
  end

  def left
    Commands::LeftCommand.new robot: @robot
  end

  def right
    Commands::RightCommand.new robot: @robot
  end
end
