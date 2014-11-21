class InputParser
  def initialize(**args)
    @command_factory = args[:command_factory]
  end

  def parse(text)
    type = text.split(/\s/)[0]

    case type
    when 'PLACE' then @command_factory.place  position: Position.new(0, 0, :NORTH)
    when 'REPORT' then @command_factory.report
    end
  end
end
