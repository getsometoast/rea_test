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
    ReportCommand.new output: @output
  end
end
