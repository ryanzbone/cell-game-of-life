require 'minitest/autorun'
require './cell.rb'

describe Cell do
  describe '#neighbor?' do
    before do
      @c1 = Cell.new(1, 1)
      @c2 = Cell.new(1, 2)
      @c3 = Cell.new(2, 2)
      @c4 = Cell.new(9, 9)
    end

    it 'is true when they are adjacent neighbors' do
      assert_equal true, @c1.neighbor?(@c2)
    end
    it 'is true when they are diagonal neighbors' do
      assert_equal true, @c1.neighbor?(@c3)
    end
    it 'is false when they are not neighbors' do
      assert_equal false, @c1.neighbor?(@c4)
    end
  end
end
