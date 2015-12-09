require_relative 'node'  # => true

class List
  attr_accessor :name, :append, :list, :head, :tail, :all, :current_node # => nil

  def initialize
    @head = nil   # => nil
    @tail = nil
    @current_node = nil # => nil
  end

  def add_node(new_node)
    @current_node = Node.new(new_node)
    if @head && @tail == nil
      @head = @current_node
      @tail = @current_node
    else
      .next = @current_node
      @tail = @current_node
    end

  end


  def all
    current = @head
    current.each do |number|
      puts "#{list.data}"
    end
  end


  def prepend(node)

    if @head.nil?
      @head = node
      @tail = node
    else
      node.next = @head
      @head = node
    end
    return self
  end

  def at(index)
    current = @head
    while current && index > 0
      current = current.next
      index -= 1
    end
    current.data if current
  end


  def append(new_data)
    node = Node.new(new_data)  # => #<Node:0x007fb8358a0968 @next=nil, @data="A">, #<Node:0x007fb83589bd78 @next=nil, @data="B">, #<Node:0x007fb83589b328 @next=nil, @data="d">
    if @head.nil?               # => true, false, false
      @head = node              # => #<Node:0x007fb8358a0968 @next=nil, @data="A">
      @tail = node              # => #<Node:0x007fb8358a0968 @next=nil, @data="A">
    else
      @tail.next = node         # => #<Node:0x007fb83589bd78 @next=nil, @data="B">, #<Node:0x007fb83589b328 @next=nil, @data="d">
      @tail = node              # => #<Node:0x007fb83589bd78 @next=nil, @data="B">, #<Node:0x007fb83589b328 @next=nil, @data="d">
    end                         # => #<Node:0x007fb8358a0968 @next=nil, @data="A">, #<Node:0x007fb83589bd78 @next=nil, @data="B">, #<Node:0x007fb83589b328 @next=nil, @data="d">
    return self                 # => #<List:0x007fb8358a0df0 @head=#<Node:0x007fb8358a0968 @next=nil, @data="A">, @tail=#<Node:0x007fb8358a0968 @next=nil, @data="A">>, #<List:0x007fb8358a0df0 @head=#<Node:0x007fb8358a0968 @next=#<Node:0x007fb83589bd78 @next=nil, @data="B">, @data="A">, @tail=#<Node:0x007fb83589bd78 @next=nil, @data="B">>, #<List:0x007fb8358a0df0 @head=#<Node:0x007fb8358a0968 @next=#<Node:0x007fb83589bd78 @next=#<Node:0x007fb83589b328 @next=nil, @data="d">, @data="B">, @data="A">, @tail=#<Node:0x007fb83589b328 @next=nil, @data="d">>
  end
end


__END__
list = List.new   # => #<List:0x007fb8358a0df0 @head=nil, @tail=nil>
list.append("A")  # => #<List:0x007fb8358a0df0 @head=#<Node:0x007fb8358a0968 @next=nil, @data="A">, @tail=#<Node:0x007fb8358a0968 @next=nil, @data="A">>
list.append("B")  # => #<List:0x007fb8358a0df0 @head=#<Node:0x007fb8358a0968 @next=#<Node:0x007fb83589bd78 @next=nil, @data="B">, @data="A">, @tail=#<Node:0x007fb83589bd78 @next=nil, @data="B">>
list.append("d")  # => #<List:0x007fb8358a0df0 @head=#<Node:0x007fb8358a0968 @next=#<Node:0x007fb83589bd78 @next=#<Node:0x007fb83589b328 @next=nil, @data="d">, @data="B">, @data="A">, @tail=#<Node:0x007fb83589b328 @next=nil, @data="d">>


__END__
node1 = Node.new("A")  # => #<Node:0x007ff7b40ad800 @next=nil, @data="A">
node2 = Node.new("B")  # => #<Node:0x007ff7b40ad5d0 @next=nil, @data="B">
node3 = Node.new("C")  # => #<Node:0x007ff7b40ad378 @next=nil, @data="C">

list = List.new     # => #<List:0x007ff7b40ad210 @data=nil, @tail=nil>
list.append(node1)  # => #<List:0x007ff7b40ad210 @data=#<Node:0x007ff7b40ad800 @next=nil, @data="A">, @tail=#<Node:0x007ff7b40ad800 @next=nil, @data="A">>
list.data           # => #<Node:0x007ff7b40ad800 @next=nil, @data="A">
list.append(node2)  # => #<List:0x007ff7b40ad210 @data=#<Node:0x007ff7b40ad800 @next=#<Node:0x007ff7b40ad5d0 @next=nil, @data="B">, @data="A">, @tail=#<Node:0x007ff7b40ad5d0 @next=nil, @data="B">>
list.data           # => #<Node:0x007ff7b40ad800 @next=#<Node:0x007ff7b40ad5d0 @next=nil, @data="B">, @data="A">
list.append(node3)  # => #<List:0x007ff7b40ad210 @data=#<Node:0x007ff7b40ad800 @next=#<Node:0x007ff7b40ad5d0 @next=#<Node:0x007ff7b40ad378 @next=nil, @data="C">, @data="B">, @data="A">, @tail=#<Node:0x007ff7b40ad378 @next=nil, @data="C">>
list.data           # => #<Node:0x007ff7b40ad800 @next=#<Node:0x007ff7b40ad5d0 @next=#<Node:0x007ff7b40ad378 @next=nil, @data="C">, @data="B">, @data="A">
list.all            # => nil

# >> #<Node:0x007ff7b40ad800>
