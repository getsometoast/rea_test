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

  def to_s
    "#{@x},#{@y},#{@heading}"
  end
end
