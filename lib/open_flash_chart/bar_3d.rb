module OpenFlashChart

  class Bar3d < BarBase
    def initialize args={}
      @type = "bar_3d"
      super
    end
  end

  class Bar3dValue < Base
    def initialize(top, args={})
      @top = top
      super args
    end
  end 

end