class BarGlass < BarBase
  def initialize
    @type = "bar_glass"
    super
  end
end

class BarGlassValue < OpenFlashChart
  def initialize(top)
    @top = top
  end
end
