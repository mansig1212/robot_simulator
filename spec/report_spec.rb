require 'spec_helper'
describe Report do
  let(:robot){Robot.new}
  let(:position){CellPosition.new(0,0,'NORTH')}

  describe 'execute' do
    it 'should return report when robot is places' do
      robot.position = position
      expect(Report.new(robot).execute).to eql 'OUTPUT: 0, 0, NORTH'      
    end

    it 'should return  string when robot is not places' do
      expect(Report.new(robot).execute).to eql 'Robot is not placed' 
    end
  end
end
