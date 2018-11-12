class Panel
  attr_accessor :width, :height

  def initialize(x, y)
    @width = x
    @height = y
  end

  def to_s
    "#{fmt @width}\" x #{fmt @height}\""
  end

  private

  def fmt(x)
    "#{x.truncate} #{x - x.truncate}"
  end
end