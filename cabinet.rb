class Cabinet
  attr_reader :drawers

  def initialize(calculator, drawer_proportions)
    @calculator = calculator
    @drawers = []
    drawer_proportions.each { |p| add_drawer(p) }
  end

  def add_drawer(proportion)
    drawer = Drawer.new @calculator.drawer_side_panel(proportion),
                        @calculator.drawer_front_back_panel(proportion),
                        @calculator.drawer_bottom_panel,
                        @calculator.drawer_face_panel(proportion)
    @drawers.push drawer
  end

  def to_s
    i = 0
    str = ""
    drawers.each do |d|
      i += 1
      str += "\ndrawer #{i}: \n #{d.to_s}"
    end
    str += " --------------------- "
  end
end
