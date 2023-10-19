require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(value)
    curr = @root

     return nil if @root.nil?
    
    while curr.value != value 
        if value > curr.value
          curr.right = curr 
        else value < curr.value
          curr.left = curr 
        end 
      return curr 
    end        
  end

  def insert(value)
    new_node = Node.new(value)
    curr = @root

    if @root.nil?
      new_node = @root
      return @root
    end

    curr?
    if curr.value == value
      return nil
    end

    if value > curr.value
      if current.right.nil?
        curr.right = new_node
        return new_node
      end
      curr = curr.right
    elsif value < curr.value
      if current.left.nil?
        curr.left = new_node
        return new_node
      end
      curr = curr.left
      
    end
  end 


end 
