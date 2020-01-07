class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left, right)
    @payload = payload
    @left = left
    @right = right
  end

  def self.check_left(value, node)
    if node.left.nil?
      node.left = BinaryTree.new(value, nil, nil)
    else
      compare_value(value, node.left)
    end
  end

  def self.check_right(value, node)
    if node.right.nil?
      node.right = BinaryTree.new(value, nil, nil)
    else
      compare_value(value, node.right)
    end
  end

  def self.compare_value(value, node)
    if value < node.payload
      check_left(value, node)
    elsif value > node.payload
      check_right(value, node)
    end
  end

  def self.sort(list)
    @array = list
    @trunk = BinaryTree.new(@array.shift, nil, nil)

    @array.each do |value|
      if value < @trunk.payload
        check_left(value, @trunk)
      elsif value > @trunk.payload
        check_right(value, @trunk)
      end
    end

    @sorted_array = []

    puts @trunk.inspect
    #Create first node, because the tree is currently nil

    #Create second node, to the left if it is less or the right if it is more

    #After all items are placed, extract the lowest child

    #circle up to all of the other children

  end
end