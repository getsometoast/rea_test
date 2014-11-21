class InputParser
  def initialize(**args)
    @command_factory = args[:command_factory]
  end

  def parse(text)
    type = text.split(/\s/)[0].to_sym

    @command_factory.create type: { position: Position.new(0, 0, :NORTH)}
  end
end
