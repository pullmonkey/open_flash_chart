module OpenFlashChart

  class RadarAxis < Base
    def initialize(max, args={})
      @max = max
      super args
    end
  end

end