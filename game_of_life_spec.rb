require 'minitest/autorun'
require './game_of_life.rb'
require './cell.rb'

describe GameOfLife do

  before do
    @subject = GameOfLife.new
    c1 = Cell.new(1, 1)
    c2 = Cell.new(1, 2)
    @subject.cells = [c1, c2]
  end

  describe 'rule one' do
    it 'kills cells with less than 2 neighbors' do
      @subject.step
      assert_equal 0, @subject.cells.count
    end
  end

  describe 'rule two' do
    before { @subject.cells.push Cell.new(2,2) }
    it 'keeps cells with 2 or 3 neighbors' do
      @subject.step
      assert_equal 3, @subject.cells.count
    end
  end


  describe 'rule three' do
    before do
        # 012
      # 0 .x.
      # 1 xxx
      # 2 .x.
      @subject.cells.push Cell.new(0,1)
      @subject.cells.push Cell.new(1,0)
      @subject.cells.push Cell.new(2,1)
    end
    it 'kills cells with more than 3 neighbors' do
        # 012
      # 0 .x.
      # 1 x.x
      # 2 .x.
      assert_equal 5, @subject.cells.count
      @subject.step
      assert_equal 4, @subject.cells.count
    end
  end

  describe 'num_neighbors' do
    it 'counts neighbors' do
      assert_equal 1, @subject.num_neighbors(@subject.cells[0])
    end
  end

end
