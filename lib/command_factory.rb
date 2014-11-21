class CommandFactory
  def place(**args)
    PlaceCommand.new
  end

  def report
    ReportCommand.new
  end
end
