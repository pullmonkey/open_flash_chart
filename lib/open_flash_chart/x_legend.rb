module OpenFlashChart

  class XLegend < Base
    def initialize(text, args={})
      @text = text
      super args
    end
  end

end