module OpenFlashChart

  class Bar < BarBase
    def initialize args={}
      @type = "bar"
      super
    end
  end

  class BarValue < Base
    def initialize( top, bottom=nil, args={} )
      @top = top
      @bottom = bottom
      super args
    end
  end

end