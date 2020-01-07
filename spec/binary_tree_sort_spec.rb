require 'spec_helper'

RSpec.describe :BinaryTreeSort, type: :model do 
  # describe "array sorts each item into the binary tree" do
  #   it "should take an array and place them in the appropriate place on a tree" do
  #     #Test tree creation
  #     seven = BinaryTree.new(7, nil, nil)
  #     five  = BinaryTree.new(5, nil, nil)
  #     four  = BinaryTree.new(4, nil, nil)
  #     six   = BinaryTree.new(6, nil, seven)
  #     three = BinaryTree.new(3, nil, six)
  #     two   = BinaryTree.new(2, four, five)
  #     trunk = BinaryTree.new(1, two, three)

  #     #Test case to sort
  #     test_array = [7, 4, 9, 1, 6, 14, 10]
  #   end
  # end
  describe 'binary tree sort should work' do
    it 'should order the array' do
      expected = [1, 4, 6, 7, 9, 10, 14]
      array = [7, 4, 9, 1, 6, 14, 10]
      expect(BinaryTreeSort.sort(array)).to eq expected
    end
  end
end