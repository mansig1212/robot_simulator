module RobotSimulator
  class Move
    def initialize(robot, table)
      @robot = robot
      @table = table
    end

    def execute
      if @robot.is_placed?
        case @robot.position.direction
        when 'EAST'
          move_to_east
        when 'WEST'
          move_to_west
        when 'NORTH'
          move_to_north
        when 'SOUTH'
          move_to_south
        end
      end
    end

    private

    def move_to_east
      @robot.position.x_axis +=1 if @table.within_x_edge?(@robot.position.x_axis+1)
    end

    def move_to_west
      @robot.position.x_axis -=1 if @table.within_x_edge?(@robot.position.x_axis-1)
    end

    def move_to_north
      @robot.position.y_axis += 1 if @table.within_y_edge?(@robot.position.y_axis+1)
    end

    def move_to_south
      @robot.position.y_axis -= 1 if @table.within_y_edge?(@robot.position.y_axis-1)
    end

  end
end
