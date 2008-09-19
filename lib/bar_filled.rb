class BarFilled < BarBase
  def initialize(color=nil, outline_color=nil)
    @type = "bar_filled"
    super
    @colour = color
    @outline_colour = outline_color
  end
end

class BarFilledValue < BarValue
  def initialize(top, bottom=nil)
    super(top, bottom)
  end
end
