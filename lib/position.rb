class Position
  attr_reader :x, :y, :heading

  def initialize(x, y, heading)
    @x, @y, @heading = x, y, heading
  end

  def ==(other)
    @x == other.x &&
    @y == other.y &&
    @heading == other.heading
  end
end
