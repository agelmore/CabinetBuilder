class Drawer
  def initialize(side_panel, front_panel, bottom_panel, face_panel)
    @left_side = side_panel
    @right_side = side_panel.clone
    @front_panel = front_panel
    @back_panel = front_panel.clone
    @bottom_panel = bottom_panel
    @face_panel = face_panel
  end

  def to_s
    "\tleft side: #{@left_side.to_s}\n" +
    "\tright side: #{@right_side.to_s}\n" +
    "\tfront panel: #{@front_panel.to_s}\n" +
    "\tback panel: #{@back_panel.to_s}\n" +
    "\tbottom panel: #{@bottom_panel.to_s}\n" +
    "\tface panel: #{@face_panel.to_s}\n"
  end
end