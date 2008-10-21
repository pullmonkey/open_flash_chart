class HBarValue < OpenFlashChart
  def initialize(left,right=nil)
    @left  = left
    @right = right || left
  end
end
class HBar < OpenFlashChart
  def initialize(color="#9933CC")
    @type = "hbar"
    @colour = color
    @values = []
  end

  def set_values(v)
    v.each do |val|
      append_value(HBarValue.new(val))
    end
  end
end
