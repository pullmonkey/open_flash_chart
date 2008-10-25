module OpenFlashChart

  class BarStack < BarBase
    def initialize args={}
      @type = "bar_stack"
      super
    end

    alias_method :append_stack, :append_value
  end

  class BarStackValue < Base
    def initialize(val,colour, args={})
      @val    = val
      @colour = colour
      super
    end
  end

end