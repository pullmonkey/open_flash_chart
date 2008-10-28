module OpenFlashChart

  class Chart < Base
    def initialize( title=nil, args={})
      @title = Title.new( title ) if title
      super args
    end    
  end

  class OpenFlashChart < Chart
  end

end
