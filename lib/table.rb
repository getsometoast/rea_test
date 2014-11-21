class Table
  def out_of_bounds?(position)
    return true unless position.x.between?(0,4) &&
                        position.y.between?(0,4)

    false
  end
end
