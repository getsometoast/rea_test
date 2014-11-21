class InputParser
  def initialize(**args)
    @command_factory = args[:command_factory]
  end

  def parse(text)

    @command_factory.create PLACE: { position: Position.new(0, 0, :NORTH)}

    return []
  end
end
