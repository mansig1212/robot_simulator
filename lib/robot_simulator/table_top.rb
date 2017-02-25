module RobotSimulator
  class TableTop
    def initialize(x_width, y_width)
      @x_width = x_width
      @y_width = y_width
    end


    def is_valid_position?(position)
      (position.x_axis.between?(0, @x_width-1) and position.y_axis.between?(0, @y_width-1)) ? true : false
    end

    def within_x_edge?(x)
      x.between?(0, @x_width-1) ? true : false
    end

    def within_y_edge?(y)
      y.between?(0, @y_width-1) ? true : false
    end
  end
end
