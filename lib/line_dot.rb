class LineDot < LineBase
  def initialize
    @type = "line_dot"
  end
end

class DotValue < OpenFlashChart
  def initialize(value, color)
    @value = value
    @colour = color
  end
end
