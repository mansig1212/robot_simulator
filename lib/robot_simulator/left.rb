module RobotSimulator
  class Left
    LEFT_DIRECTION_MAPPING = {'NORTH' => 'WEST', 'WEST' => 'SOUTH', 'SOUTH' => 'EAST', 'EAST' => 'NORTH'}
    def initialize(robot)
      @robot = robot
    end

    def execute
      @robot.position.direction = LEFT_DIRECTION_MAPPING[@robot.position.direction] if @robot.is_placed?
    end
  end
end
