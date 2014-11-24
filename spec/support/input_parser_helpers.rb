module InputParserHelpers
  def it_parses_a_place_command(**args)
    command_factory = double('CommandFactory')

    parser = InputParser.new command_factory: command_factory

    expect(command_factory).to receive(:place).with( position: args[:position] )

    parser.parse(args[:input])
  end

  def it_parses_a_command(**args)
    command_factory = double('CommandFactory')

    parser = InputParser.new command_factory: command_factory

    expect(command_factory).to receive(args[:type])

    parser.parse(args[:input])
  end

  def it_fails_on_badly_formed_command_text(text)
    command_factory = double('CommandFactory')

    parser = InputParser.new command_factory: command_factory

    expect { parser.parse(text) }.to raise_error(Errors::BadlyFormedCommand)
  end
end
