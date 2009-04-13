module OFCExtras
  def add_element(element)
    @elements ||= []
    @elements << element
  end

  def <<(e)
    add_element e
  end

  def set_key(text, size)
    @text = text
    @font_size = size
  end

  def append_value(v)
    @values ||= []
    @values << v
  end

  def set_range(min,max,steps=1)
    @min = min
    @max = max
    @steps = steps
  end

  def set_offset(v)
    @offset = v ? true : false
  end

  def set_colours(colour, grid_colour)
    @colour = colour
    @grid_colour = grid_colour
  end

  def set_tooltip(tip)
    if tip.is_a?(Tooltip)
      #we have a style for our chart's tooltips
      @tooltip = tip
    else
      # the user could just use set_tip(tip) or tip=(tip) to just set the text of the tooltip
      @tip = tip
    end
  end
  alias_method "tooltip=", :set_tooltip
end
