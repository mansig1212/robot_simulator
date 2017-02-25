module RobotSimulator
  class CellPosition
    attr_accessor :x_axis, :y_axis, :direction
    def initialize(x,y,direction)
      @x_axis = x.to_i
      @y_axis = y.to_i
      @direction = direction
    end
  end
end
