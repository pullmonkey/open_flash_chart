require 'bar_base'
class BarStack < BarBase
  def initialize
    @type = "bar_stack"
    super
  end

  alias_method :append_stack, :append_value
end
