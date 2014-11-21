class CommandFactory
  def create(**args)
    PlaceCommand.new
  end
end
