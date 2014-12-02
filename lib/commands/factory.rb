module Commands
  class Factory
    def initialize(**args)
      @robot = args[:robot]
      @table = args[:table]
      @output = args[:output]
    end

    def place(**args)
      Commands::Place.new robot: @robot,
                          position: args[:position],
                          table: @table
    end

    def report
      Commands::Report.new robot: @robot,
                           output: @output
    end

    def move
      Commands::Move.new robot: @robot,
                         table: @table
    end

    def left
      Commands::Left.new robot: @robot
    end

    def right
      Commands::Right.new robot: @robot
    end
  end
end
