require File.join(File.dirname('__FILE__'), "lib/robot_simulator/version")
require File.join(File.dirname('__FILE__'), "lib/robot_simulator/table_top")
require File.join(File.dirname('__FILE__'), "lib/robot_simulator/robot")
require File.join(File.dirname('__FILE__'), "lib/robot_simulator/cell_position")
require File.join(File.dirname('__FILE__'), "lib/robot_simulator/move")
require File.join(File.dirname('__FILE__'), "lib/robot_simulator/left")
require File.join(File.dirname('__FILE__'), "lib/robot_simulator/right")
require File.join(File.dirname('__FILE__'), "lib/robot_simulator/place")
require File.join(File.dirname('__FILE__'), "lib/robot_simulator/report")

module RobotSimulator
  class Command
    attr_accessor :position
    def initialize(*args)
      @commands = args
      @robot = Robot.new
      @table = TableTop.new(5,5)
    end

    def execute
      @commands.each do |c|
        case c
        when /^PLACE\s+\d+,\s*\d+,\s*(NORTH|SOUTH|EAST|WEST)$/
          pos = c.gsub(',', ' ').split(' ')[-3..-1]
          @robot.place(@table, CellPosition.new(pos[0], pos[1], pos[2]))
        when /^MOVE$/
          @robot.move(@table)
        when /^LEFT$/
          @robot.left
        when /^RIGHT$/
          @robot.right
        when /^REPORT$/
          @robot.report
        else
          puts "Invalid command #{c}"
        end
      end
    end
  end
end
