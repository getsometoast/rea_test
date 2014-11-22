module InputParserHelpers
  def it_parses_a_place_command(**args)
    command_factory = double('CommandFactory')

    parser = InputParser.new command_factory: command_factory

    expect(command_factory).to receive(:place).with( position: args[:position] )

    parser.parse(args[:input])
  end
end