require 'spec_helper'
describe Place do
  let(:robot){Robot.new}
  let(:table){TableTop.new(5,5)}
  let(:position){CellPosition.new(0,0,'NORTH')}

  describe 'execute' do
    it 'should place robot at a position if position is valid' do
      table.stub(:is_valid_position?).and_return(true)
      Place.new(robot, table, position).execute
      expect(robot.position).to be_instance_of CellPosition
    end

    it 'should not place robot if position is invalid' do
      table.stub(:is_valid_position?).and_return(false)
      Place.new(robot, table, position).execute
      expect(robot.position).to be_nil
    end
  end
end
