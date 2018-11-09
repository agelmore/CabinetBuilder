require 'test/unit'
require_relative '../calculator'

class CalculatorTest < Test::Unit::TestCase
  CARCASS_THICKNESS = 45.0/64
  DRAWER_THICKNESS = 29.0/64
  WIDTH = 28 + 2 * CARCASS_THICKNESS
  HEIGHT = 31
  DEPTH = 21
  REAR_CLEARANCE = 1.0/4
  SIDE_CLEARANCE = 1.0/2
  DADO_WIDTH = 1.0/2
  DADO_DEPTH = 3.0/8
  TOP_CLEARANCE = 2
  BOTTOM_CLEARANCE = 1.0/4
  FACE_CLEARANCE = 1.0/8

  attr_accessor :calculator

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @calculator = Calculator.new WIDTH, HEIGHT, DEPTH, DRAWER_THICKNESS, CARCASS_THICKNESS,
                                     SIDE_CLEARANCE, REAR_CLEARANCE, TOP_CLEARANCE, BOTTOM_CLEARANCE,
                                     FACE_CLEARANCE, DADO_WIDTH, DADO_DEPTH

  end

  def test_drawer_side_panel
    proportion = 1.0 / 2
    panel = @calculator.drawer_side_panel proportion
    expected_height = 12 + 115.0/128
    expected_width = 20 + 1.0/4
    assert_equal expected_width, panel.width
    assert_equal expected_height, panel.height
  end

  def test_drawer_front_back_panel
    proportion = 1.0 / 2
    panel = @calculator.drawer_front_back_panel proportion
    expected_height = 12 + 115.0/128
    expected_width = 26 + 3.0 / 32
    assert_equal expected_height, panel.height
    assert_equal expected_width, panel.width
  end
end