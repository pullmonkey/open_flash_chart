class BarStack < BarBase
  def initialize
    @type = "bar_stack"
    super
  end

  alias_method :append_stack, :append_value
end

class BarStackValue < OpenFlashChart
  def initialize(val,colour)
    @val    = val
    @colour = colour
  end
end

