class CommandFactory
  def initialize(**args)
    @robot = args[:robot]
    @table = args[:table]
  end

  def place(**args)
    PlaceCommand.new(robot: @robot,
                     position: args[:position],
                     table: @table)
  end

  def report
    ReportCommand.new
  end
end
