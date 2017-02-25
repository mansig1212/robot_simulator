module RobotSimulator  
  class Robot
    attr_accessor :position

    def initialize
      @position = nil
    end

    def is_placed?
      @position.nil? ? false : true
    end

    def place(tab = nil, pos = nil)
      Place.new(self, tab, pos).execute
    end

    def move(tab)
      Move.new(self, tab).execute
    end

    def left
      Left.new(self).execute
    end

    def right
      Right.new(self).execute
    end

    def report
      r = Report.new(self).execute
      puts r
    end
  end
end
