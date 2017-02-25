module RobotSimulator
  class Right
    RIGHT_DIRECTION_MAPPING = {'NORTH' => 'EAST', 'EAST' => 'SOUTH', 'SOUTH' => 'WEST', 'WEST' => 'NORTH'}
    def initialize(robot)
      @robot = robot
    end

    def execute
      @robot.position.direction = RIGHT_DIRECTION_MAPPING[@robot.position.direction] if @robot.is_placed?
    end
  end
end
