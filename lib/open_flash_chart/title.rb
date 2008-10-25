module OpenFlashChart

  class Title < Base
    def initialize(text='', args = {})
      @text = text
      super args
    end
  end

end