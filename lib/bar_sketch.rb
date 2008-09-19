class BarSketch < BarBase
  def initialize(colour, outline_colour, fun_factor)
    @type = "bar_sketch"
    super
    
    @colour = colour
    @outline_colour = outline_colour
    @offset = fun_factor
  end
end
