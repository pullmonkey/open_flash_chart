module OpenFlashChart

  class YLegend < Base
    def initialize(text = '', args={})
      @text = text
      super args
    end
  end

end