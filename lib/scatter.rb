class ScatterValue < OpenFlashChart
  def initialize(x,y,dot_size=-1)
    @x = x
    @y = y
    @dot_size = dot_size if dot_size > 0
  end
end

class Scatter < OpenFlashChart
  def initialize(colour, dot_size)
    @type = "scatter"
    @colour = colour
    @dot_size = dot_size
  end
end
