module REATest
  class Application
    def initialize(args)
      @input_file = args
    end

    def run
      text = read_input_from_file
      command_factory = create_command_factory
      commands = get_commands(command_factory, text)
      run_simulator(commands)
    end

    def run_simulator(commands)
      simulator = Simulator.new
      simulator.run(commands)
    end

    def get_commands(command_factory, text)
      parser = InputParser.new command_factory: command_factory
      parser.parse(text)
    end

    def create_command_factory
      table = Table.new
      robot = Robot.new
      output = $stdout

      CommandFactory.new robot: robot,
                         table: table,
                         output: output
    end

    def read_input_from_file
      File.read(@input_file)
    end
  end
end
