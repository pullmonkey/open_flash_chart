module OpenFlashChart
  class AreaBase < Base
    def initialize args={}
      super
      @fill_alpha = 0.35
      @values = []      
    end

    def set_fill_colour(color)
      @fill = color
    end 

    def set_loop
      @loop = true
    end
  end
end