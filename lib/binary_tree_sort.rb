class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left, right)
    @payload = payload
    @left = left
    @right = right
  end

  def self.compare_value(value)
    if value < self.payload && self.check_left
      return self.check_left
    elsif value > node.payload && node.check_right
      self.right.compare_value(value)
    else
      return "Hmm"
    end
  end

  def self.sort(list)
    @array = list
    @trunk = BinaryTree.new(@array.shift, nil, nil)

    @array.each do |value|
      if value < @trunk.payload
        if @trunk.check_left == nil
          @trunk.left = BinaryTree.new(value, nil, nil)
        else
          @trunk.left.check_left
        end
        puts @trunk.left
      elsif value > @trunk.payload
        @trunk.right = BinaryTree.new(value, nil, nil)
        puts "Right!"
      end
    end

    @sorted_array = []

    #After all items are placed, extract the lowest child

    #circle up to all of the other children

  end

# private
  def check_left
    self.left.nil? ? nil : self.left
  end

  def check_right
    self.right.nil? ? nil : self.right
  end
end