require 'spec_helper'
describe Left do
  let(:robot){Robot.new}
  let(:position){CellPosition.new(0,0,'NORTH')}
  describe 'execute' do
    context 'robot is placed'  do
      it 'moves robot 90 degrees left' do
        robot.position = position
        Left.new(robot).execute
        expect(robot.position.direction).to eq 'WEST'
      end
    end
    
    context 'robot is not placed' do
      it 'does nothing' do
        Left.new(robot).execute
        expect(robot.position).to be_nil
      end
    end
  end
end
