class PieValue < OpenFlashChart
  def initialize(value, text)
    @value = value
    @text = text
  end
end

class Pie < OpenFlashChart
  def initialize
    @type = "pie"
    @colors = ["#d01f3c","#356aa0","#C79810"]
    @alpha = 0.6
    @border = 2
    @values = [2,3,PieValue(6.5,"hello (6.5)")]
  end
end
