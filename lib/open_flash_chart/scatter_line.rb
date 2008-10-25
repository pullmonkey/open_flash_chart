module OpenFlashChart

  class ScatterLine < Base
    def initialize(colour, dot_size, args={})
      @type = 'scatter_line'
      @colour = colour
      @dot_size = dot_size
      super args
    end
  end

end