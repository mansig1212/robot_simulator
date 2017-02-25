module RobotSimulator
  class Place
    def initialize(robot, table, position)
      @robot = robot
      @table = table
      @position = position
    end

    def execute
      if @table.is_valid_position?(@position)
        @robot.position = @position
      end
    end
  end
end
