class ReportCommand
  def initialize(**args)
    @robot = args[:robot]
    @output = args[:output]
  end

  def execute
    @output.puts @robot.position.to_s unless @robot.position.nil?
  end
end
