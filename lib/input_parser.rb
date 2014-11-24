class InputParser
  def initialize(**args)
    @command_factory = args[:command_factory]
  end

  def parse(text)
    get_lines_from(text).map { |line| get_command_from(line) }
  end

  private

  def get_lines_from(text)
    text.split(/\n/)
  end

  def get_command_from(line)
    fail Errors::BadlyFormedCommand unless can_parse? line

    type = get_type_from(line)

    create_command type: type, from: line
  end

  def can_parse?(line)
    line =~ /(MOVE|LEFT|RIGHT|REPORT)|(^PLACE\s\d,\d,(NORTH|SOUTH|EAST|WEST)$)/
  end

  def get_type_from(line)
    line.split(/\s/)[0].to_sym
  end

  def create_command(**args)
    case args[:type]
    when :PLACE then
      @command_factory.place position: get_position_from(args[:from])
    when :REPORT then
      @command_factory.report
    when :MOVE then
      @command_factory.move
    when :LEFT then
      @command_factory.left
    when :RIGHT then
      @command_factory.right
    end
  end

  def get_position_from(line)
    tokens = line.split(/\s/)[1].split(',')
    Position.new(tokens[0].to_i, tokens[1].to_i, tokens[2].to_sym)
  end
end
