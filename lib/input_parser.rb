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
    when 'PLACE' then @command_factory.place position: get_position_from_line(line)
    when 'REPORT' then @command_factory.report
    when 'MOVE' then @command_factory.move
    end
  end

  def get_position_from_line(line)
    tokens = line.split(/\s/)[1].split(',')

    Position.new(tokens[0].to_i,
                 tokens[1].to_i,
                 tokens[2].to_sym)
  end
end
