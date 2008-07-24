require 'bar_base'
require 'bar_3d'
require 'bar_glass'
class Bar < BarBase
  def initialize
    @type = "bar"
    super
  end
end
