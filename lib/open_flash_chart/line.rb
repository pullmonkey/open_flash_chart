module OpenFlashChart

  class Line < LineBase
    def initialize args={}
      @type = "line"
      super
    end
  end

end