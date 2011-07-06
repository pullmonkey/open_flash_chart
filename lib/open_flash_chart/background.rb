module OpenFlashChart

  class Inner_bg_grad
    def initialize()
      @fillType = 'linear'
      @colour1 = '#f8f8d8'
      @colour2 = '#FFFFFF'
      @alpha = [1,1]
      @ratio = [0,255]
      @angle = '90'
    end
    
    def set_fillType(type)
      @fillType = type
    end
    
    def set_colour1(color)
      @colour1 = color
    end
    
    def set_colour2(color)
      @colour2 = color
    end
    
    def set_alpha(array)
      @alpha = array.to_a
    end
    
    def set_ratio(array)
      @ratio = array.to_a
    end
    
    def set_angle(angle)
      @angle = angle.to_s
    end
    
    alias_method :fillType=, :set_fillType
    alias_method :colour1=, :set_colour1
    alias_method :colour2=, :set_colour2
    alias_method :alpha=, :set_alpha
    alias_method :ratio=, :set_ratio
    alias_method :angle=, :set_angle
  end

end