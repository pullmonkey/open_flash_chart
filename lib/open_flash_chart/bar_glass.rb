module OpenFlashChart

  class BarGlass < BarBase
    def initialize args={}
      @type = "bar_glass"
      super
    end
  end

  class BarGlassValue < Base
    def initialize(top, args={})
      @top = top
      super args
    end
  end

end