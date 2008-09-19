class ShapePoint < OpenFlashChart
  def initialize(x, y)
    @x = x
    @y = y
  end
end

class Shape < OpenFlashChart
  def initialize(color)
    @type = "shape"
    @colour = color
    @values = []
  end
end
