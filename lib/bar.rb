class Bar < BarBase
  def initialize
    @type = "bar"
    super
  end
end

class BarValue < OpenFlashChart
  def initialize(top, bottom=nil)
    @top = top
    @bottom = bottom
  end
end
