class InputParser
  def initialize(**args)
    @command_factory = args[:command_factory]
  end

  def parse(text)
    get_commands_from(text)
  end

  private

  def get_commands_from(text)
    text.split(/\n/).map { |line| get_command_from(line) }
  end

  def get_command_from(line)
    type = line.split(/\s/)[0]

    case type
    when 'PLACE' then
      @command_factory.place position: Position.new(0, 0, :NORTH)
    when 'REPORT' then
      @command_factory.report
    end
  end
end
