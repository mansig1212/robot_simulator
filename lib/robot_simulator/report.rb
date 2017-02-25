module RobotSimulator
  class Report
    def initialize(robot)
      @robot = robot
    end

    def execute
      if @robot.is_placed?
        return "OUTPUT: #{@robot.position.x_axis}, #{@robot.position.y_axis}, #{@robot.position.direction}"
      else
        return "Robot is not placed"
      end
    end
  end
end
