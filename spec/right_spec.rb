require 'spec_helper'
describe Right do
  let(:robot){Robot.new}
  let(:position){CellPosition.new(0,0,'NORTH')}
  describe 'execute' do
    context 'robot is placed'  do
      it 'turns robot 90 degrees right' do
        robot.position = position
        Right.new(robot).execute
        expect(robot.position.direction).to eq 'EAST'
      end
    end
    
    context 'robot is not placed' do
      it 'does nothing' do
        Right.new(robot).execute
        expect(robot.position).to be_nil
      end
    end
  end
end

