module OpenFlashChart

  class HBarValue < Base
    def initialize(left,right=nil, args={})
      @left  = left
      @right = right || left
      super args
    end
  end

  class HBar < Base
    def initialize(colour="#9933CC", args={})
      @type = "hbar"
      @colour = colour
      @values = []
      super args
    end

    def set_values(v)
      v.each do |val|
        append_value(HBarValue.new(val))
      end
    end
  end

end