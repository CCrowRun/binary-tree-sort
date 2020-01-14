class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left, right)
    @payload = payload
    @left = left
    @right = right
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

    #After all items are placed, extract the lowest child

    #circle up to all of the other children

  end
  
# private
  def check_left
    self.left.nil? ? nil : self.left.payload
  end

  def check_right
    self.right.nil? ? nil : self.right.payload
  end
end