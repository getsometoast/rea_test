module REATest
  class Application
    def initialize(args)
      @input_file = args
    end

    def run
      text = File.read(@input_file)

      robot = Robot.new

      command_factory = CommandFactory.new robot: robot
      parser = InputParser.new command_factory: command_factory

      commands = parser.parse(text)

      simulator = Simulator.new
      simulator.run(commands)

      puts '0,0,NORTH'
    end
  end
end
