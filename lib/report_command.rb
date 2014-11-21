class ReportCommand
  def initialize(**args)
    @output = args[:output]
  end

  def execute
    @output.puts '0,0,NORTH'
  end
end
