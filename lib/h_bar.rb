class HBarValue < OpenFlashChart
  def initialize(left,right)
    @left  = left
    @right = right
  end
end
class HBar < OpenFlashChart
  def initialize(color="#9933CC")
    @type = "hbar"
    @colour = color
    @values = []
  end
end
