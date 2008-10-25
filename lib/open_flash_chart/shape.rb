module OpenFlashChart

  class ShapePoint < Base
    def initialize(x, y, args={})
      @x = x
      @y = y
      super args
    end
  end

  class Shape < Base
    def initialize(colour, args={})
      @type = "shape"
      @colour = colour
      @values = []
      super args
    end
  end

end