

class List
  attr_accessor :name, :append # => nil

  def initialize
    @head = nil
    @tail = nil
  end

  def prepend(node)
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next = @head
      @head = node
    end
  end

  def append(node)
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next = node
      @tail = node
    end
  end



end
