class XAxisLabel < OpenFlashChart
  def initialize(text, colour, size, rotate)
    @text = text
    @colour = colour
    @size = size
    @rotate = rotate
  end

  def set_vertical
    @rotate = "vertical"
  end
  
  def set_visible
    @visible = true
  end
end
