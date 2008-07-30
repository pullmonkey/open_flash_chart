class PieValue < OpenFlashChart
  def initialize(value, text)
    @value = value
    @text = text
  end
end

class Pie < OpenFlashChart
  def initialize
    @type = "pie"
    @alpha = 0.6
    @border = 2
  end
end
