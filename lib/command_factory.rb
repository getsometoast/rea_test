class CommandFactory
  def place(**args)
    PlaceCommand.new
  end
end
