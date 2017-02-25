require 'spec_helper'
describe TableTop do
  let(:table){TableTop.new(5,5)}
  describe 'is_valid_position?' do
    it 'should return true if position is valid on a table'  do
      position = CellPosition.new(0,0,'NORTH')
      expect(table.is_valid_position?(position)).to be true
    end

    it 'should return false if position is invalid on a table'  do
      position = CellPosition.new(0,8,'NORTH')
      expect(table.is_valid_position?(position)).to be false
    end
  end

  describe 'within_x_edge?' do
    it 'should return true if x is within table width' do
      x = 2
      expect(table.within_x_edge?(x)).to be true
    end

    it 'should return false if x is not within table width' do
      x = 6
      expect(table.within_x_edge?(x)).to be false
    end
  end

  describe 'within_y_edge?' do
    it 'should return true if y is within table height' do
      y = 1
      expect(table.within_y_edge?(y)).to be true
    end

    it 'should return false if y is not within table height' do
      y = -1
      expect(table.within_y_edge?(y)).to be false
    end
  end

end
