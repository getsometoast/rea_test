module REATest
  class Application
    def initialize(args)
      @input_file = args
    end

    def run
      text = File.read(@input_file)

      table = Table.new
      robot = Robot.new

      command_factory = CommandFactory.new robot: robot, table: table
      parser = InputParser.new command_factory: command_factory

      commands = parser.parse(text)

      simulator = Simulator.new
      simulator.run(commands)
    end
  end
end
