require 'bar_base'
require 'bar_3d'
require 'bar_glass'
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
