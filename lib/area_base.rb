class AreaBase < OpenFlashChart
  def initialize
    @fill_alpha = 0.35
    @values = []
  end

  def set_fill_colour(color)
    @fill = color
  end 
end
