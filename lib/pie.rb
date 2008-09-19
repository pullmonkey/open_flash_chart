class PieValue < OpenFlashChart
  def initialize(value, label)
    @value = value
    @label = label
  end

  def set_label(label, label_color, font_size)
    self.label        = label
    self.label_colour = label_color
    self.font_size    = font_size
  end
end

class Pie < OpenFlashChart
  def initialize
    @type = "pie"
    @colours = ["#d01f3c","#356aa0","#C79810"]
    @border = 2
  end

  def set_no_labels
    self.no_labels = true
  end
end
