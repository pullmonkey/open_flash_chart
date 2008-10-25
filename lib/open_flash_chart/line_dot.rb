module OpenFlashChart

  class LineDot < LineBase
    def initialize args={}
      @type = "line_dot"
      super
    end
  end

  class DotValue < Base
    def initialize(value, colour, args={})
      @value = value
      @colour = colour
      super
    end
  end

end