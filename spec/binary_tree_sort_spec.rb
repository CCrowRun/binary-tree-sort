require 'spec_helper'

RSpec.describe :BinaryTree, type: :model do 
  before :each do
      #Test tree creation
      @seven = BinaryTree.new(7, nil, nil)
      @five  = BinaryTree.new(5, nil, nil)
      @four  = BinaryTree.new(4, nil, nil)
      @six   = BinaryTree.new(6, nil, @seven)
      @three = BinaryTree.new(3, nil, @six)
      @two   = BinaryTree.new(2, @four, @five)
      @trunk = BinaryTree.new(1, @two, @three)
  end
  describe "array sorts each item into the binary tree" do
    it "should take an array and place them in the appropriate place on a tree" do
      #Test case to sort
      expect(@trunk.payload).to eq 1
      expect(@trunk.left.left.payload).to eq 4
    end
  end
  describe 'binary tree sort should work' do
    it 'should order the array' do
      expected = [1, 4, 6, 7, 9, 10, 14]
      array = [7, 4, 9, 1, 6, 14, 10]
      expect(BinaryTree.sort(array)).to eq expected
    end
  end
  describe 'binary tree should be able to check its nodes' do
    it 'should return the left value' do
      expect(@trunk.check_left.payload).to eq(2)
    end
    it 'should return the left value when nil' do
      expect(@three.check_left).to eq(nil)
    end
    it 'should return the right value' do
      expect(@trunk.check_right.payload).to eq(3)
    end
    it 'should return the right value if nil' do
      expect(@four.check_right).to eq(nil)
    end
  end
end