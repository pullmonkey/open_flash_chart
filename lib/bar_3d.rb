class Bar3d < BarBase
  def initialize
    @type = "bar_3d"
    super
  end
end

class Bar3dValue < OpenFlashChart
  def initialize(top)
    @top = top
  end
end 
