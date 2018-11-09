class Calculator
  def initialize(width, height, depth, drawer_thickness, carcass_thickness,
                   slider_clearance, rear_clearance, top_clearance,
                   bottom_clearance, face_clearance, dado_width, dado_depth)
    @width = width
    @height = height
    @depth = depth
    @drawer_thickness = drawer_thickness
    @carcass_thickness = carcass_thickness
    @slider_clearance = slider_clearance
    @rear_clearance = rear_clearance
    @top_clearance = top_clearance
    @bottom_clearance = bottom_clearance
    @face_clearance = face_clearance
    @dado_width = dado_width
    @dado_depth = dado_depth
  end

  def drawer_side_panel(proportion)
    x = @depth - @rear_clearance - @dado_width
    y = drawer_body_height proportion
    Panel.new x, y
  end

  def drawer_front_back_panel(proportion)
    x = @width - 2 * @carcass_thickness - 2 * @slider_clearance - 2 * @drawer_thickness
    y = drawer_body_height proportion
    Panel.new x, y
  end

  def drawer_bottom_panel
    x = @width - 2 * @carcass_thickness - 2 * @slider_clearance - 2 * @drawer_thickness
    y = @depth - @rear_clearance - @dado_width - 2 * @drawer_thickness
    Panel.new x, y
  end

  private

  def drawer_body_height(proportion)
    drawer_height(proportion) - @top_clearance - @bottom_clearance
  end

  def drawer_height(proportion)
    proportion * (@height - @carcass_thickness)
  end
end

class Panel
  attr_accessor :width, :height

  def initialize(x, y)
    @width = x
    @height = y
  end
end
