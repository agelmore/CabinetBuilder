require_relative 'calculator'
require_relative 'cabinet'
require_relative 'drawer'

CARCASS_THICKNESS = Rational(45,64)
DRAWER_THICKNESS = Rational(29,64)
WIDTH = 16 + Rational(1, 4) + 2 * CARCASS_THICKNESS
HEIGHT = 31
DEPTH = 21
REAR_CLEARANCE = Rational(1,4)
SIDE_CLEARANCE = Rational(1,2)
DADO_WIDTH = Rational(1,2)
DADO_DEPTH = Rational(3,8)
TOP_CLEARANCE = 1 + Rational(1,2)
BOTTOM_CLEARANCE = Rational(1,4)
FACE_CLEARANCE = Rational(1,8)

calculator = Calculator.new WIDTH, HEIGHT, DEPTH, DRAWER_THICKNESS, CARCASS_THICKNESS,
                            SIDE_CLEARANCE, REAR_CLEARANCE, TOP_CLEARANCE, BOTTOM_CLEARANCE,
                            FACE_CLEARANCE, DADO_WIDTH, DADO_DEPTH

drawer_proportions = [Rational(1, 5), Rational(1, 5), Rational(3, 10), Rational(3, 10)]

cabinet = Cabinet.new(calculator, drawer_proportions)

puts cabinet


