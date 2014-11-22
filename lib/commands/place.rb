module Commands
  class Place
    def initialize(**args)
      @robot = args[:robot]
      @position = args[:position]
      @table = args[:table]
    end

    def execute
      @robot.position = @position unless @table.out_of_bounds? @position
    end
  end
end
