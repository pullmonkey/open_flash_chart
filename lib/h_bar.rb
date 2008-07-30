class HBarValue < OpenFlashChart
  def initialize(left,right)
    @left  = left
    @right = right
  end
end
class HBar < OpenFlashChart
  def initialize
    @type = "hbar"
    @colour = "#9933CC"
    @text = "Page Views"
    @font_size = 10
    @values = []
  end
end
